
## Podział zadań:

| Lp. | Osoba | Zadanie | Status wykonania |
| :--- | :--- | :--- | :--- | 
| 1. | Magda | UARTEM KONFIGURUJEMY GODZINĘ ORAZ DATĘ, PO WYSŁANIU KOMENDY ZEGAREK RUSZA | chuj wie |
| 2. | Hubert | PRZEZ PIERWSZE 3s WYŚWIETLA H:M, DRUGIE 3s WYŚWIETLA S, trzecie 3s datę  | NIEWYKONANE |
| 3. | Hubert | PRZYTRZYMUJĄC S1 WYŚWIETLI GODZINĘ H:M, PRZYCISKIEM S2 datę | NIEWYKONANE |
| 4. | Magda | CO 1s BĘDZIE ZAPALAĆ DIODY: D1, D1D2, D1D2D3, D1D2D3D4, D2D3D4, D3D4, D4, D1... | NIEWYKONANE |
| 5. | Tymoteusz | O PÓŁNOCY ZAGRA MELODYJKĘ Z POMOCĄ BUZERA | NIEWYKONANE |

---
## 1. Start i konfiguracja projektu

| Komenda | Co robi? |
| :--- | :--- |
| `git init` | Tworzy nowe, puste repozytorium w bieżącym folderze (używane tylko raz na start). |
| `git clone <link>` | Pobiera gotowy projekt z chmury (np. z GitHuba) na Twój komputer. |
| `git config --global user.name "Imię"` | Ustawia Twoje imię/pseudonim, którym podpisywane będą Twoje commity. |

---

## 2. Podstawowe komendy

| Komenda | Co robi? |
| :--- | :--- |
| **`git status`** | **Nasz najważniejszy radar.** Pokazuje stan plików: zmodyfikowane (czerwone) i gotowe do zapisu (zielone). Używaj stale! |
| `git add <nazwa_pliku>` | Dodaje konkretny plik do poczekalni (Staging Area). |
| `git add .` | Dodaje **wszystkie** zmienione i nowe pliki z folderu naraz (uważaj, by nie dodać śmieci). |
| `git commit -m "Twój opis"` | Zamyka pliki z poczekalni w trwałą "paczkę" (commit) z opisem zmian. |

---

## 3. Współpraca i synchronizacja z GitHubem

| Komenda | Co robi? |
| :--- | :--- |
| `git pull origin main` | **Pobieranie.** Ściąga najnowsze zmiany od znajomych i automatycznie łączy je z Twoim lokalnym kodem. |
| `git push origin main` | **Wysyłanie.** Wypycha Twoje lokalne commity na GitHuba, aby reszta zespołu mogła je pobrać. |

---

## 4. Historia i ratowanie sytuacji

| Komenda | Co robi? |
| :--- | :--- |
| `git log` | Wyświetla całą historię zmian (commitów) w projekcie. Aby wyjść z podglądu, naciśnij klawisz **`q`**. |
| `git restore <nazwa_pliku>` | **Przycisk "Cofnij".** Przywraca plik do stanu z ostatniego commita, kasując wszystkie niezapisane błędy. |

---


