# ==========================================
# Number Theory for Cryptography
# ==========================================

# Greatest Common Divisor
def compute_gcd(a, b):
    return gcd(a, b)


# Extended Euclidean Algorithm
def extended_gcd(a, b):
    return xgcd(a, b)


# Modular inverse
def modular_inverse(a, n):
    g, x, y = xgcd(a, n)

    if g != 1:
        return None

    return x % n

# Euler's Totient Function
def compute_totient(n):
    count = 0

    for k in range(1, n + 1):
        if gcd(k, n) == 1:
            count += 1

    return count

# Euler's Theorem
def verify_euler_theorem(a, n):
    if gcd(a, n) != 1:
        return False

    return power_mod(a, euler_phi(n), n) == 1

# Fermat's Little Theorem
def verify_fermat_theorem(a, p):
    if not is_prime(p):
        return False

    if p.divides(a):
        return False

    return power_mod(a, p - 1, p) == 1