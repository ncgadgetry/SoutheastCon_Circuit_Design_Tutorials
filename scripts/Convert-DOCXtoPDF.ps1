param(
    [Parameter(Position=0)]
    [string]$FolderPath
)

# If no folder was supplied, allow the user to enter one.
if ([string]::IsNullOrWhiteSpace($FolderPath)) {
    $FolderPath = Read-Host "Enter the folder containing the DOCX files"
}

# Remove surrounding quotes if the path was pasted with them.
$FolderPath = $FolderPath.Trim().Trim('"')

if (-not (Test-Path -LiteralPath $FolderPath -PathType Container)) {
    Write-Host ""
    Write-Host "ERROR: Folder not found:" -ForegroundColor Red
    Write-Host $FolderPath -ForegroundColor Red
    Write-Host ""
    Read-Host "Press Enter to exit"
    exit 1
}

$FolderPath = (Resolve-Path -LiteralPath $FolderPath).Path

Write-Host ""
Write-Host "DOCX -> PDF batch converter" -ForegroundColor Cyan
Write-Host "Scanning: $FolderPath"
Write-Host ""

# Microsoft Word constants
$wdExportFormatPDF = 17
$wdExportOptimizeForPrint = 0
$wdExportAllDocument = 0
$wdExportCreateNoBookmarks = 0

$converted = 0
$skipped = 0
$errors = 0

$word = $null

try {
    $word = New-Object -ComObject Word.Application
    $word.Visible = $false
    $word.DisplayAlerts = 0

    $files = Get-ChildItem -LiteralPath $FolderPath -Filter "*.docx" -File -Recurse |
             Where-Object { $_.Name -notlike "~$*" }

    if ($files.Count -eq 0) {
        Write-Host "No DOCX files found." -ForegroundColor Yellow
    }
    else {
        foreach ($docx in $files) {
            $pdfPath = [System.IO.Path]::ChangeExtension($docx.FullName, ".pdf")

            $needsConversion = $true
            $reason = "PDF does not exist"

            if (Test-Path -LiteralPath $pdfPath -PathType Leaf) {
                $pdf = Get-Item -LiteralPath $pdfPath

                if ($pdf.LastWriteTime -ge $docx.LastWriteTime) {
                    $needsConversion = $false
                    $reason = "PDF is current"
                }
                else {
                    $reason = "DOCX is newer"
                }
            }

            $relative = $docx.FullName.Substring($FolderPath.Length).TrimStart('\')

            if (-not $needsConversion) {
                Write-Host ("SKIP     {0,-70} ({1})" -f $relative, $reason) -ForegroundColor DarkGray
                $skipped++
                continue
            }

            Write-Host ("CONVERT  {0,-70} ({1})" -f $relative, $reason) -ForegroundColor Green

            $document = $null

            try {
                $document = $word.Documents.Open(
                    $docx.FullName,
                    $false,   # ConfirmConversions
                    $true,    # ReadOnly
                    $false    # AddToRecentFiles
                )

                # Export directly to PDF.
                $document.ExportAsFixedFormat(
                    $pdfPath,
                    $wdExportFormatPDF,
                    $false,                   # OpenAfterExport
                    $wdExportOptimizeForPrint,
                    $wdExportAllDocument,
                    0,                        # From
                    0,                        # To
                    $wdExportCreateNoBookmarks,
                    $true,                    # DocStructureTags
                    $true,                    # BitmapMissingFonts
                    $false                    # UseISO19005_1
                )

                $document.Close($false)
                [System.Runtime.InteropServices.Marshal]::ReleaseComObject($document) | Out-Null
                $document = $null

                $converted++
            }
            catch {
                $errors++
                Write-Host "         ERROR: $($_.Exception.Message)" -ForegroundColor Red

                if ($null -ne $document) {
                    try { $document.Close($false) } catch {}
                    try { [System.Runtime.InteropServices.Marshal]::ReleaseComObject($document) | Out-Null } catch {}
                    $document = $null
                }
            }
        }
    }
}
catch {
    Write-Host ""
    Write-Host "ERROR starting Microsoft Word:" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    $errors++
}
finally {
    if ($null -ne $word) {
        try { $word.Quit() } catch {}
        try { [System.Runtime.InteropServices.Marshal]::ReleaseComObject($word) | Out-Null } catch {}
        $word = $null
    }

    [GC]::Collect()
    [GC]::WaitForPendingFinalizers()
}

Write-Host ""
Write-Host "----------------------------------------"
Write-Host "Converted: $converted" -ForegroundColor Green
Write-Host "Skipped:   $skipped" -ForegroundColor DarkGray
Write-Host "Errors:    $errors" -ForegroundColor $(if ($errors -gt 0) { "Red" } else { "Green" })
Write-Host "----------------------------------------"
Write-Host ""

Read-Host "Press Enter to exit"
