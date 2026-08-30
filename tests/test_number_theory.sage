# ==========================================
# Tests for number_theory.sage
# ==========================================

load("../src/number_theory.sage")


# Test GCD
assert compute_gcd(48, 18) == 6
assert compute_gcd(17, 40) == 1


# Test Extended GCD
g, x, y = extended_gcd(240, 46)

assert g == 2
assert 240*x + 46*y == g


# Test modular inverse
assert modular_inverse(3, 7) == 5
assert (3 * modular_inverse(3, 7)) % 7 == 1


print("All tests passed!")