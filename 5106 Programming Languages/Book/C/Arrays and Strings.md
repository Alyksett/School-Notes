# 5106 Programming Languages, Arrays and Strings
### Austin Lyksett
### Date: 2023-09-16

---

How to we do defined arrays in C?
`int listofnumber[50];`

***HOLY REALLY IMPORTANT!! ARRAYS START AT ZERO NOT 1 WTFFFF!!!***

### Multidimensional arrays:

```C
int tableOfNumbers[10][10];
```

### Strings

Are actually just arrays of chars.

Nativley, strings don't exist without a stdlib.

- In order to allow variable length strings, the `\0` character is used to indicate the end of a string.
- So, if we have a string, char `NAME[50];` and we store `DAVE` in it's contents, it'll look like this:
  
| D   | A   | V   | E   | ... |     |
| --- | --- | --- | --- | --- | --- |
| 0   | 1   | 2   | 3   | ... | 49 |


