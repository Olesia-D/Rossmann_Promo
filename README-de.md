# Rossmann Verkaufsanalyse

![Rossmann Promo Sales Analysis.png](https://github.com/Olesia-D/Rossmann_Promo/blob/main/Rossmann%20Promo%20Sales%20Analysis.png)

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
Rossman Sunday Sales.png: Visualisierung der Summe der Umsatz am Sonntag
Rossmann Assortment b: Visualisierung der Summe der Umsatz nach Assortment Type b
Rossmann Promo Sales Analysis.png: gesamt Dashboard 


## Methodik

### Datenbereinigung (SQL):  

Behandlung fehlender Werte in CompetitionDistance.  
Zusammenführung der Tabellen train und store zu rossmann_combined.  
Berechnung des durchschnittlichen Umsatzes, der Kundenanzahl und des Bons nach Promo, Filialtyp und Wochentag.


### Explorative Datenanalyse (Python):  

Visualisierung des durchschnittlichen Umsatzes mit/ohne Werbeaktionen.  
Analyse des Umsatzes nach Wochentag und Filialtyp.  
Untersuchung der Wirkung von Werbeaktionen in verschiedenen Filialtypen.

### Visualisierung (PowerBI):

Visualisierung der Umsätze nach Wochentagen, Store-Typen, Sortimentsarten und durchschnittlichem Kassenbon


## Overall Conclusion:
Promotions sind am effektivsten am Montag (der Gewinn hat sich mehr als verdoppelt) und in type A stores (+231,39 Millionen).

Sie ziehen nicht nur mehr Kundschaft an, sondern erhöhen auch den average check (z. B. von 8,38 auf 10,36 am Montag).

## Business Perspective (Is it worth investing in promotions?):

Promotions sind wirkungsvoll: Sie steigern den Umsatz über verschiedene Wochentage und store types hinweg.

Der average check steigt mit Promotions, was bedeutet, dass nicht nur mehr Kundschaft angezogen wird, sondern auch mehr pro Kunde ausgegeben wird. Das ist ein positives Signal für das Geschäft.

In type B stores hingegen führen Promotions tatsächlich zu einem Rückgang der Verkaufszahlen.
Wenn man jedoch die Umsätze dieser store type nach Wochentagen betrachtet, zeigt sich, dass 83 % des Umsatzes am Sonntag generiert werden. Das deutet darauf hin, dass type B stores stark auf den Sonntag ausgerichtet sind.

Angesichts des Kontexts, dass die meisten Geschäfte in Deutschland sonntags geschlossen sind, kann man daraus schließen, dass type B stores überwiegend an Bahnhöfen angesiedelt sind und sich an Kundschaft richten, die kurzfristig einkaufen muss.
Daher ist es nicht sinnvoll, in diesen Stores Promotions durchzuführen – Kund:innen kaufen das, was sie dringend brauchen, auch ohne Rabatte.
![Rossmann Sunday Sales](https://github.com/Olesia-D/Rossmann_Promo/blob/main/Rossman%20Sunday%20Sales.png)


Auch bei separater Betrachtung der Umsätze aus assortment B zeigt sich, dass diese ausschließlich in type B stores verkauft werden – mit dem höchsten Umsatz ebenfalls am Sonntag.
Daher ist es auch für diese Produktkategorie nicht notwendig, Promotions einzuführen.
![Rossmann Sunday Sales](https://github.com/Olesia-D/Rossmann_Promo/blob/main/Rossmann%20Assortment%20b.png)


## Optimization (When/Where to run promotions?):
When:

Die besten Tage für Promotions sind Montag und Dienstag, da hier der Effekt am stärksten ist.
Am Donnerstag und Freitag ist der Effekt schwächer – hier könnten Promotions seltener eingesetzt werden.
Laut den Daten werden samstags keine Promotions durchgeführt. Es wird empfohlen, den Einsatz von Promotions an diesem Tag zu testen, da Samstag bereits ohne Promotions den höchsten Wochenumsatz erzielt.
Dieser Umsatz könnte durch den Einsatz von Promotions möglicherweise weiter steigen.

Where:

Fokus auf type A stores, da hier der Effekt am stärksten ist.
Für type B stores sollten alternative Strategien getestet werden, da klassische Promotions dort weniger effektiv sind.

### Verwendete Tools

SQL: Datenbereinigung und erste Analyse, Datenmanipulation (DBeaver).

Python: pandas (Datenmanipulation), seaborn/matplotlib (Visualisierung).

PowerBI: Visualisierung

GitHub: Projekt-Hosting.


### Zukünftige Verbesserungen

Erweiterung der Analyse um prädiktive Modellierung nach Erlernen von Machine-Learning-Techniken.

Detailliertere Untersuchung von Kundenverhaltenstrends.

### Kontakt

Für Fragen oder Feedback kontaktieren Sie mich über:
https://www.linkedin.com/in/olesia-zahudaieva/
