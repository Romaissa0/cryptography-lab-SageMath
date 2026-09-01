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