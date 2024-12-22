def fibonacci_recursive(n):
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return fibonacci_recursive(n-1) + fibonacci_recursive(n-2)


n = int(input("Add meg az n értékét: "))
if n < 0:
    print("Hiba: A Fibonacci-szám nem definiált negatív számokra.")
elif n != int(n):
    print("Hiba: Kérlek, egész számot adj meg.")
else:
    result = fibonacci_recursive(n)
    print(f"A(z) {n}. Fibonacci-szám: {result}")