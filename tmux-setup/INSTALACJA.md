# Instalacja tmux na Windows 11

## Krok 1 — Zainstaluj WSL (jeśli nie masz)

Otwórz **PowerShell jako Administrator** i wpisz:
```
wsl --install
```
Uruchom ponownie komputer. Otworzy się Ubuntu — ustaw nazwę użytkownika i hasło.

---

## Krok 2 — Zainstaluj tmux w WSL

Otwórz terminal Ubuntu i wpisz:
```bash
sudo apt update && sudo apt install tmux -y
```

---

## Krok 3 — Skopiuj konfigurację

W terminalu Ubuntu:
```bash
cp .tmux.conf ~/.tmux.conf
chmod +x start.sh
```

---

## Krok 4 — Utwórz foldery projektów

```bash
mkdir -p ~/projekty/OpenHuman ~/projekty/ezoFizyk
```

---

## Krok 5 — Uruchom!

```bash
bash start.sh
```

---

## Podstawowe skróty (prefix = Ctrl+A)

| Skrót | Działanie |
|---|---|
| `Ctrl+A, c` | Nowe okno |
| `Ctrl+A, 1/2/3/4` | Przełącz na okno |
| `Ctrl+A, v` | Podziel pionowo |
| `Ctrl+A, h` | Podziel poziomo |
| `Ctrl+A, strzałki` | Poruszaj się między panelami |
| `Ctrl+A, d` | Odłącz (sesja działa w tle!) |
| `tmux attach -t karol` | Wróć do sesji |
| `Ctrl+A, r` | Przeładuj konfigurację |
| Scroll myszą | Przewijanie historii |
