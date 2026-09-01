# test construction of prime field
F7 = create_prime_field(7)
print(F7)

create_prime_field(8)

# create extension
R.<x> = PolynomialRing(GF(2))
f = x^3 + x + 1
F8 = create_extension_field(2, 3, f)
print(F8)
print(F8.list())

a = F8.gen()
print(a^3)

R.<x> = PolynomialRing(GF(2))
f_bad_degree = x^2 + x + 1

create_extension_field(2, 3, f_bad_degree)

f_reducible = x^3 + x^2 + x + 1

create_extension_field(2, 3, f_reducible)

f_good = x^3 + x + 1
f_bad = x^3 + x^2 + x + 1
print(is_valid_extension_polynomial(2, 3, f_good))
print(is_valid_extension_polynomial(2, 3, f_bad))