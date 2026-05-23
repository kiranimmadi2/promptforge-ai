# PromptForge AI Compiler CLI (PowerShell)
param(
    [string]$Action,
    [string]$Lang,
    [string]$Stack,
    [string]$Tool = "cursor",
    [string]$Keyword
)

function Show-Help {
    Write-Host "PromptForge AI Compiler CLI"
    Write-Host "Usage:"
    Write-Host "  .\cli\promptforge.ps1 -Action list"
    Write-Host "  .\cli\promptforge.ps1 -Action rules"
    Write-Host "  .\cli\promptforge.ps1 -Action workflows"
    Write-Host "  .\cli\promptforge.ps1 -Action skills"
    Write-Host "  .\cli\promptforge.ps1 -Action init -Lang [lang] -Stack [stack] -Tool [claude|cursor]"
}

switch ($Action) {
    "list" {
        Write-Host "=== Core Libraries ==="
        Get-ChildItem .ai/core/ | Select-Object Name
        Write-Host "=== Stacks ==="
        Get-ChildItem .ai/stacks/ | Select-Object Name
        Write-Host "=== Languages ==="
        Get-ChildItem .ai/languages/ | Select-Object Name
    }
    "rules" {
        Get-Content AGENTS.md
    }
    "workflows" {
        Get-ChildItem .ai/workflows/ | Select-Object Name
    }
    "skills" {
        Get-ChildItem -Recurse .ai/skills/ | Where-Object { $_.PsIsContainer -eq $false } | Select-Object Name
    }
    "init" {
        Write-Host "Compiling optimized rules for Lang: $Lang, Stack: $Stack..."
        $outFile = ".cursorrules"
        if ($Tool -eq "claude") {
            $outFile = "CLAUDE.md"
        }
        
        $content = Get-Content AGENTS.md -Raw
        if (Test-Path ".ai/languages/$Lang.md") {
            $content += [System.Environment]::NewLine + (Get-Content ".ai/languages/$Lang.md" -Raw)
        }
        if (Test-Path ".ai/stacks/$Stack.md") {
            $content += [System.Environment]::NewLine + (Get-Content ".ai/stacks/$Stack.md" -Raw)
        }
        
        Set-Content -Path $outFile -Value $content
        Write-Host "Successfully generated optimized configuration at $outFile!"
    }
    default {
        Show-Help
    }
}
