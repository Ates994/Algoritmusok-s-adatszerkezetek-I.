# Mohó algoritmus bash scriptje

## A script magyarázata

1. **Python script ellenőrzése:** Az első `if` blokk ellenőrzi, hogy a Python script (`moho_alg.py`) elérhető-e. Ha nem található, a program leáll.

2. **Tesztesetek definiálása:** A `tests` tömb tartalmazza a bemeneteket. Ezek példaként szolgálnak a Python program tesztelésére.

3. **Tesztfuttatás:** A tesztek iterációja során a bemenetet átadjuk a Python programnak az `echo` és a `python3` segítségével. A kimenetet eltároljuk az `output` változóban.

4. **Kimenet megjelenítése:** Minden teszt eredményét a kimenetre írja, hogy könnyen átlátható legyen a program működése.

---

## A script használata

1. Mentsd a python és a bash scripteket egy mappába
2. Adj futtatható jogot a Bash scriptnek:  
   *chmod \+x moho\_test.sh*  
3. Futtasd a Bash scriptet:  
   *./moho\_test.sh*

---