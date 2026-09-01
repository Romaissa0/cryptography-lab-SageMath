#presenting finite field

F = GF(7)

print(F)
print(F.list())

a = F(3)

print(a)
print(a.inverse_of_unit())

print(a * a.inverse_of_unit())

#operations in finite field
F = GF(7)

a = F(5)
b = F(6)

print(a + b)
print(a * b)
print(a - b)

# Galois field
F.<x> = GF(2^2, modulus=x^2 + x + 1)

print(F)
print(F.list())

print(x^2)
print(x * (x + 1))
print((x + 1)^2)
print(x^3)

# multiplicative group of a finite field

F.<x> = GF(2^3, modulus=x^3 + x + 1)

print(F.list())
print(x^3)
print(x^4)
print(x^5)
print(x^6)
print(x^7)