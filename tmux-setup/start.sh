#!/bin/bash
# start.sh — uruchamia wszystkie projekty Karola w jednym tmux
# Użycie: bash start.sh
# Wróć do sesji później: tmux attach -t karol

SESSION="karol"

# Jeśli sesja już istnieje — wróć do niej
tmux has-session -t $SESSION 2>/dev/null
if [ $? == 0 ]; then
    echo "✅ Sesja '$SESSION' już istnieje — powracam..."
    tmux attach -t $SESSION
    exit 0
fi

# ── Tworzenie sesji ──
tmux new-session -d -s $SESSION -n "OpenHuman"

# ── Okno 1: OpenHuman Agent ──
tmux send-keys -t $SESSION:1 "cd ~/projekty/OpenHuman && clear && echo '🤖 OpenHuman Agent'" Enter

# ── Okno 2: ezoFizyk ──
tmux new-window -t $SESSION -n "ezoFizyk"
tmux send-keys -t $SESSION:2 "cd ~/projekty/ezoFizyk && clear && echo '🌌 ezoFizyk'" Enter

# ── Okno 3: AI / Claude Code ──
tmux new-window -t $SESSION -n "AI-Agent"
tmux send-keys -t $SESSION:3 "clear && echo '🧠 AI Agent — wpisz: claude'" Enter

# ── Okno 4: Git / ogólne ──
tmux new-window -t $SESSION -n "Git"
tmux send-keys -t $SESSION:4 "clear && echo '📁 Git — wpisz: git status'" Enter

# ── Wróć do okna 1 ──
tmux select-window -t $SESSION:1

# ── Podłącz się do sesji ──
tmux attach -t $SESSION
