# Rekurzív algoritmus bash scriptje

## A script magyarázata

1. **Python script ellenőrzése:** Az első `if` blokk ellenőrzi, hogy a Python script (`rekurziv.py`) elérhető-e. Ha nem található, a program leáll.

2. **Tesztesetek definiálása:** Az inputs tömb tartalmazza azokat az egész számokat, amelyeket tesztelni szeretnénk. Az expected\_outputs tömb tartalmazza az ezekhez tartozó elvárt Fibonacci-eredményeket

3. **Tesztfutás:** A script egy for ciklust használ, hogy végigmenjen az inputs tömb elemein. Minden bemenetet átad a Python scriptnek, majd elmenti a kimenetet. Az eredményt kiírja a képernyőre, és összehasonlítja az elvárt eredménnyel

4. **Kimenet megjelenítése:** Minden teszt eredményét a kimenetre írja, hogy könnyen átlátható legyen a program működése.

---

## A script használata

1. Mentsd a python és a bash scripteket egy mappába
2. Add futtatható jogot a Bash scriptnek:  
   *chmod \+x rekurziv\_test.sh*  
3. Futtasd a Bash scriptet:  
   *./rekurziv\_test.sh*

---