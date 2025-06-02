# Rossmann Verkaufsanalyse
## Überblick
Dieses Projekt analysiert Verkaufsdaten aus dem Rossmann-Datensatz, um den Einfluss von Werbeaktionen auf den Umsatz in verschiedenen Filialtypen und an verschiedenen Wochentagen zu verstehen. Der Datensatz umfasst Verkaufsaufzeichnungen (train) und Metadaten der Filialen (store), die bereinigt, zusammengeführt und mit SQL und Python untersucht wurden.
Das Projekt wurde als Teil eines Portfolios entwickelt, um Fähigkeiten in SQL, Python (pandas, seaborn, matplotlib), Datenbereinigung und Datenvisualisierung zu demonstrieren.

## Projektziele
Die Hauptziele dieses Projekts sind:  

1. Feststellen, ob Investitionen in Werbekampagnen lohnenswert sind, durch Analyse ihres Einflusses auf den Umsatz.  
2. Ermitteln, welcher Wochentag oder Filialtyp am meisten von Werbeaktionen profitiert, gemessen am durchschnittlichen Umsatz pro Kunde (durchschnittlicher Bon).  
3. Die Fähigkeit zur Datenanalyse und Ableitung umsetzbarer Erkenntnisse demonstrieren, die Einzelhandelsunternehmen zugutekommen können.

## Datensatz
Die Analyse basiert auf dem Rossmann Store Sales Datensatz:https://files.fast.ai/part2/lesson14/rossmann.tgz

## Ziele

- Bereinigung und Vorverarbeitung des Datensatzes mit SQL.  
- Analyse der Beziehung zwischen Werbeaktionen, Filialtypen, Wochentagen und Umsatz.  
- Visualisierung wichtiger Erkenntnisse, um Trends und Muster aufzudecken.

## Repository-Struktur

rossmann-data-prepare.sql: SQL-Skript für Datenbereinigung, Zusammenführung von Tabellen und erste Analyse (z. B. Umsatz nach Promo, Filialtyp und Wochentag).  
Rossmann Promo data.ipynb: Jupyter Notebook mit Visualisierungen von Verkaufstrends.  
%_sales_promo.png: Visualisierung, wie höher der Umsatz mit Promo im Vergleich zu ohne Promo nach Wochentag ist (in Prozent).  
%sales_storetype.png: Visualisierung, wie höher der Umsatz mit Promo nach Filialtyp ist (in Prozent).  
average_check_by_dow.png: Visualisierung des durchschnittlichen Bons mit und ohne Promo nach Wochentag.  
average_sales_by_dow.png: Visualisierung der durchschnittlichen Umsatzsumme mit und ohne Promo nach Wochentag.  
average_sales_by_storetype.png: Visualisierung des durchschnittlichen Umsatzes mit und ohne Promo nach Filialtyp.  
average_sales_promo.png: Visualisierung der Summe der durchschnittlichen Umsätze mit und ohne Promo.

## Methodik

### Datenbereinigung (SQL):  

Behandlung fehlender Werte in CompetitionDistance.  
Zusammenführung der Tabellen train und store zu rossmann_combined.  
Berechnung des durchschnittlichen Umsatzes, der Kundenanzahl und des Bons nach Promo, Filialtyp und Wochentag.


### Explorative Datenanalyse (Python):  

Visualisierung des durchschnittlichen Umsatzes mit/ohne Werbeaktionen.  
Analyse des Umsatzes nach Wochentag und Filialtyp.  
Untersuchung der Wirkung von Werbeaktionen in verschiedenen Filialtypen.



### Wichtige Erkenntnisse
Gesamt: Werbeaktionen sind montags (+56 %) und in Typ-A-Filialen (+45 %) am effektivsten. Sie ziehen nicht nur mehr Kunden an, sondern erhöhen auch den durchschnittlichen Bon (z. B. von 8,86 auf 11,03 montags).

Geschäftsperspektive (Lohnt sich die Investition in Werbeaktionen?):
Werbeaktionen sind effektiv: Sie steigern den Umsatz um 28–56 % über die Wochentage hinweg und um 18–45 % über die Filialtypen hinweg.
Der durchschnittliche Bon steigt mit Werbeaktionen, was bedeutet, dass sie nicht nur mehr Kunden anziehen, sondern auch die Ausgaben pro Kunde erhöhen. Dies ist ein positives Signal für das Unternehmen.
In Typ-B-Filialen ist der Effekt jedoch geringer (+18 %), daher sollte geprüft werden, ob die Werbeaktionen in diesen Filialen die Kosten rechtfertigen.

Optimierung (Wann/Wo Werbeaktionen durchführen?):
Wann: Die besten Tage für Werbeaktionen sind Montag (+56 %) und Dienstag (+52 %), wo der Einfluss am stärksten ist. An Donnerstag und Freitag ist der Effekt geringer (28–30 %), daher könnten dort weniger häufig Werbeaktionen durchgeführt werden.
Wo: Fokus auf Typ-A-Filialen (+45 %), wo der Effekt am bedeutendsten ist. Für Typ-B-Filialen lohnt es sich, alternative Strategien zu testen, da Standard-Werbeaktionen weniger effektiv sind.

### Verwendete Tools

SQL: Datenbereinigung und erste Analyse, Datenmanipulation (DBeaver).

Python: pandas (Datenmanipulation), seaborn/matplotlib (Visualisierung).

GitHub: Projekt-Hosting.

### Ausführung

Klonen Sie das Repository: git clone https://github.com/Olesia-D/Rossmann-Sales-Analysis.git

Führen Sie rossmann-data-prepare.sql in einer SQL-Umgebung (z. B. DBeaver) aus, um die Daten vorzubereiten.

Öffnen Sie Rossmann Promo data.ipynb in Jupyter Notebook, um die Visualisierungen zu erkunden.

### Zukünftige Verbesserungen

Erweiterung der Analyse um prädiktive Modellierung nach Erlernen von Machine-Learning-Techniken.

Detailliertere Untersuchung von Kundenverhaltenstrends.

### Kontakt

Für Fragen oder Feedback kontaktieren Sie mich über:
https://www.linkedin.com/in/olesia-zahudaieva/
