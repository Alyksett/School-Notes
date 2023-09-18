# 5106 Programming Languages, Functions
### Austin Lyksett
### Date: 2023-09-16

---

### Funccies and arrays

- Single dimensionsal arrays are passed and taken as follows:

```C
float findAverage(int size, float list[]){
    ...
}

multidimensional ones are weird

float findAverate(int size, float list[][19])

```


## Funccy prototyping

Before you use a function, C must have knowledge about the type it retuns and the parameter type the function expects. The ANSI standard of C introduced a new way of doing this. The advantage of prototyping has several advantages:
- More structured and easier to read code
- Allows compiler to check syntax of function calls
  
Note: basically "if a function has been defined before it's been use, then you're okay to just use the function".

```C
int strlen(char []);
```