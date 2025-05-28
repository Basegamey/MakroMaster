# MakroMaster

**MakroMaster** ist ein selbst entwickeltes Makro-Tool, das Tastatureingaben erkennt und mit individuellen CMD-Befehlen verknüpft. Es unterstützt mehrere Tastaturen gleichzeitig und bietet ein flexibles Makro-Management über eine benutzerfreundliche Oberfläche.

---

## Features

- Verwaltung und Speicherung von Makros im JSON-Format  
- CMD-Befehle pro Tastendruck ausführbar  
- Automatischer Start als Hintergrunddienst  
- Benutzerfreundliche GUI zur Makroverwaltung  
- Unterstützung/Unterscheidung mehrerer Tastaturen  
- Automatisch erstellte Verknüpfungen (Desktop + Autostart)  

---

## Installation

1. Starte den **Installer (`installer.bat`) mit Administratorrechten**.

Die ZIP-Datei wird automatisch entpackt und alle Komponenten ins Benutzerverzeichnis (`C:\Users\<DeinName>\MakroMaster`) verschoben.  
Verknüpfungen für `MakroMaster.exe` (Desktop) und `startService.exe` (Autostart) werden automatisch erstellt.

2. Starte den PC neu, bevor du MakroMaster zum ersten Mal nutzt, um die Einrichtung abzuschließen und die Services zu starten.

---

## Verwendung

- **MakroMaster.exe** starten, um neue Makros aufzunehmen und bestehende zu verwalten.  
- Das Tool läuft im Hintergrund und führt automatisch Befehle aus, sobald die zugehörige Taste gedrückt wird.  
- Makros können jederzeit angepasst oder gelöscht werden.

---

## Lizenz

MakroMaster wurde **vollständig eigenständig** entwickelt, alle enthaltenen Komponenten sind selbst geschrieben.

### Lizenzübersicht

- **MakroMaster (eigener Code):** Veröffentlicht unter der [MIT License](LICENSE.txt)

---

## MIT License

(Copyright 2025 Proxi (Basegamey)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
