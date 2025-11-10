# Simple timeline generator from CSV exported from Autopsy
param([string]$csv="autopsy_export/files.csv", [string]$out="reports/timeline.csv")
Import-Csv $csv | Select-Object Name, Path, ModifiedDate, AccessedDate, CreatedDate | `
    Sort-Object ModifiedDate -Descending | Export-Csv $out -NoTypeInformation
Write-Host "Timeline saved to $out"
