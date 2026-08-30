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