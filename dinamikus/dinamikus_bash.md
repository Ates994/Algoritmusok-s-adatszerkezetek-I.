# Dinamikus algoritmus bash scriptje

## A script magyarázata

1. **Python script ellenőrzése:**

   * Az első `if` blokk ellenőrzi, hogy a Python script (`dinamikus.py`) elérhető-e. Ha a script nem található, egy hibaüzenetet jelenít meg, és a script futása megszakad.

2. **Tesztesetek definiálása:**

   * Az `inputs` tömb párosított sztringeket tartalmaz, amelyek az LCS algoritmus teszteléséhez szükséges bemenetek.  
   * Az `expected_outputs` tömb a megfelelő bemenetekhez tartozó elvárt eredményeket tartalmazza (az LCS hossza).

3. **Tesztfutás:**

   * A script egy `for` ciklusban iterál végig az `inputs` tömb elemein.  
   * Minden sztringpárt átad a Python scriptnek az `echo` paranccsal.  
   * A script futásának eredményét elmenti egy változóba (`output`).

4. **Eredmény ellenőrzése:**

   * Az aktuális eredményt (`output`) összehasonlítja az `expected_outputs` megfelelő elemével.  
   * Ha az eredmény megegyezik, a script jelzi, hogy a teszt sikeres.  
   * Ha eltér, a script hibát jelez, és kiírja az elvárt és a kapott eredményt.

---

## A script használata

1. Mentsd a python és a bash scripteket egy mappába  
2. Adj futtatható jogot a Bash scriptnek:  
   *chmod \+x dinamikus\_test.sh*  
3. Futtasd a Bash scriptet:  
   *./dinamikus\_test.sh*