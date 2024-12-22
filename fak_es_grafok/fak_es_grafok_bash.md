# Dinamikus algoritmus bash scriptje

## A script magyarázata

1. **Python script ellenőrzése:**

   * Az első `if` blokk ellenőrzi, hogy a Python script (`fak_es_grafok.py`) elérhető-e. Ha a script nem található, a program egy hibaüzenetet jelenít meg, és leáll.

2. **Tesztesetek definiálása:**

   * Az `inputs` tömb a gráfokat élek formájában tartalmazza, például `A-B,B-C,C-D`.  
   * A `starts` tömb megadja a kezdőcsúcsokat az egyes gráfokhoz.  
   * Az `expected_outputs` tömb az elvárt BFS bejárási sorrendeket tartalmazza.

3. **Tesztfutás:**

   * A script egy `for` ciklusban iterál végig az `inputs` tömb elemein.  
   * Az aktuális gráfot és a hozzá tartozó kezdőcsúcsot átadja a Python scriptnek az `echo` parancs segítségével.  
   * Az `output` változó tárolja a Python script által generált BFS bejárási sorrendet.

4. **Eredmény ellenőrzése:**

   * Az aktuális eredményt (`output`) összehasonlítja az `expected_outputs` megfelelő elemével.  
   * Ha az eredmény megegyezik, a script jelzi, hogy a teszt sikeres.  
   * Ha eltér, hibát jelez, és kiírja az elvárt és a kapott eredményt.

---

## A script használata

1. Mentsd a python és a bash scripteket egy mappába  
2. Adj futtatható jogot a Bash scriptnek:  
   *chmod \+x fak\_es\_grafok\_test.sh*  
3. Futtasd a Bash scriptet:  
   *./fak\_es\_grafok\_test.sh*