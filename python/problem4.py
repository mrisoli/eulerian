from utils.numbers import is_palindrome

largest = 0
for a in range(999, 100, -1):
    for b in range(999, 100, -1):
        n = a * b
        if n <= largest:
            break
        if is_palindrome(n):
            largest = n
print(largest)
