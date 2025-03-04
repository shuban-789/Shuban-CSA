#!/usr/bin/python3

scores = [
    "8.75/10.0000",
    "0.00/10.0000",
    "10.00/10.0000",
    "7.50/10.0000",
    "10.00/10.0000",
    "7.50/10.0000",
    "9.17/10.0000",
    "7.50/10.0000",
    "10.00/10.0000",
    "10.00/10.0000",
    "7.50/10.0000",
    "10.00/10.0000",
    "10.00/10.0000",
    "5.00/5.0000",
    "10.00/10.0000",
    "6.25/10.0000",
    "9.58/10.0000",
    "5.00/5.0000",
    "5.00/5.0000",
    "6.25/10.0000",
    "6.25/10.0000",
    "7.00/7.0000",
    "5.00/5.0000",
    "5.00/5.0000",
    "5.00/5.0000",
    "5.00/5.0000",
    "5.00/5.0000",
    "5.00/10.0000"
]

a = 0.0
b = 0.0

for ele in scores:
    num, denom = map(float, ele.split("/"))  # Split and convert to float
    a += num
    b += denom

print(a)
print(b)
