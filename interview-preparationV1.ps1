# 1. My list of interview questions
$questions = @(
    "Tell me about a time you faced a difficult challenge at work and how you overcame it.",
    "What is your greatest professional strength?",
    "Describe a situation where you had a conflict with a coworker and how you resolved it.",
    "Why do you want to work for this company?",
    "Where do you see yourself in five years?"
)
Write-Host "==================================================" -ForegroundColor Green
Write-Host "       INTERVIEW PRACTICE SESSION STARTED         " -ForegroundColor Green
Write-Host "==================================================" -ForegroundColor Green
Write-Host "You have $($questions.Count) questions. You will get 3 minutes per question." -ForegroundColor Yellow
Start-Sleep -Seconds 2

# 2. Shuffle all questions randomly into a deck
$shuffledQuestions = $questions \vert{} Get-Random -Count$questions.Count
$questionNumber = 1

# 3. Loop through each question one by one
foreach ($q in$shuffledQuestions) {
    Clear-Host
    Write-Host "--- Question $questionNumber of $($questions.Count) ---" -ForegroundColor Green
    Write-Host "`n$q`n" -ForegroundColor White
    Write-Host "--------------------------------------------------" -ForegroundColor Green
    Write-Host "Speak your answer out loud. Timer is running..." -ForegroundColor Yellow

    # 4. Live 3-minute countdown timer (180 seconds)
    for ($seconds = 180; $seconds -gt 0; $seconds--) {
        $mins = [Math]::Floor($seconds / 60)
        $secs =$seconds % 60
        # Overwrites the same line to create a ticking clock effect
        Write-Host -NoNewline ("\rTime remaining: {0:D2}:{1:D2}   " -f $mins,$secs)
        Start-Sleep -Seconds 1
    }

    Write-Host "`n`n[Time's up! Moving to the next question in 3 seconds...]" -ForegroundColor Green
    Start-Sleep -Seconds 3
    $questionNumber++
}

Clear-Host
Write-Host "==================================================" -ForegroundColor Green
Write-Host "      GREAT JOB! PRACTICE SESSION COMPLETE        " -ForegroundColor Green
Write-Host "==================================================" -ForegroundColor Green
