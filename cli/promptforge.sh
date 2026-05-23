#!/bin/bash
# PromptForge AI Compiler CLI (Bash)

show_help() {
    echo "PromptForge AI Compiler CLI"
    echo "Usage:"
    echo "  ./cli/promptforge.sh list                     - List all modular components"
    echo "  ./cli/promptforge.sh rules                    - Show universal AGENTS.md rules"
    echo "  ./cli/promptforge.sh workflows                - List all step-by-step workflows"
    echo "  ./cli/promptforge.sh skills                   - List all available capability skills"
    echo "  ./cli/promptforge.sh find <keyword>           - Find specific configuration guides"
    echo "  ./cli/promptforge.sh init [lang] [stack]      - Compile optimized combined rule files"
}

if [ "$1" == "list" ]; then
    echo "=== Core Libraries ==="
    ls -p .ai/core/
    echo "=== Stacks ==="
    ls -p .ai/stacks/
    echo "=== Languages ==="
    ls -p .ai/languages/
elif [ "$1" == "rules" ]; then
    cat AGENTS.md
elif [ "$1" == "workflows" ]; then
    ls -la .ai/workflows/
elif [ "$1" == "skills" ]; then
    ls -la .ai/skills/
elif [ "$1" == "init" ]; then
    LANG=$2
    STACK=$3
    TOOL=$5
    echo "Compiling optimized rules for Lang: $LANG, Stack: $STACK..."
    
    # Simple compiler simulation
    OUTFILE=".cursorrules"
    if [ "$TOOL" == "claude" ]; then
        OUTFILE="CLAUDE.md"
    fi
    
    cat AGENTS.md > $OUTFILE
    if [ -f ".ai/languages/$LANG.md" ]; then
        cat ".ai/languages/$LANG.md" >> $OUTFILE
    fi
    if [ -f ".ai/stacks/$STACK.md" ]; then
        cat ".ai/stacks/$STACK.md" >> $OUTFILE
    fi
    
    echo "Successfully generated optimized configuration at $OUTFILE!"
else
    show_help
fi
