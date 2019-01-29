def get_next_collatz(n):
    if n % 2 == 0:
        return n // 2
    else:
        return (3 * n) + 1

def get_chain_size(n):
    current,chain=n,1
    while current != 1:
        chain += 1
        current = get_next_collatz(current)
    return chain


num,max_chain=13,10
for i in range(14, 1_000_000):
    chain_size = get_chain_size(i)
    if chain_size > max_chain:
        num = i
        max_chain = chain_size
print(num)
