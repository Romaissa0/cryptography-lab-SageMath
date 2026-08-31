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



# Test euler_function
for n in range(1, 11):
    print(n, compute_totient(n), euler_phi(n))

# test euler and fermat theorem
print(verify_euler_theorem(3, 10))
print(verify_euler_theorem(2, 21))

print(verify_fermat_theorem(3, 7))
print(verify_fermat_theorem(7, 13))

print(verify_euler_theorem(2, 10))
print(verify_fermat_theorem(3, 10))
print(verify_fermat_theorem(7, 7))

    
print("All tests passed!")