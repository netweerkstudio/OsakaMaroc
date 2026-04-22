Write-Host "🚀 Adding changes..." -ForegroundColor Cyan
git add .

$commitMessage = Read-Host "📝 Enter your commit message (or press Enter for 'auto-update')"
if ([string]::IsNullOrWhiteSpace($commitMessage)) {
    $commitMessage = "auto-update"
}

Write-Host "💾 Committing changes with message: '$commitMessage'..." -ForegroundColor Cyan
git commit -m $commitMessage

Write-Host "⬆️ Pushing to GitHub..." -ForegroundColor Cyan
git push

Write-Host "✅ Deployment to GitHub complete, Have a good day Mr. Grain Reda!" -ForegroundColor Green
