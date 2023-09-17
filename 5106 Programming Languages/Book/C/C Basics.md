# 5106 Programming Languages, C Basics
### Austin Lyksett
### Date: 2023-09-16

---

## Some History...

- 1969 c was created
- 1970, "B" was developed as a replacement.
- 1971, "C" was created as a successor to B.
- 1973, UNIX OS was almost totally written in C.

## Some characteristics of C

- Lots of function calls
- loose typing
- structured language
- bitwise ops
- pointers
  
## C Program Structure

A C program generally has the following form:

- Preprocessor commands
- Type definitions
- Function prototypes
- Variables
- Funccies

## Variables

| C type             | size(bytes) | Lower bound            | Upper bound            |
| ------------------ | ----------- | ---------------------- | ---------------------- |
| char               | 1           | -                      | -                      |
| unsigned char      | 1           | 0                      | 255                    |
| short int          | 2           | -32768                 | +32768                 |
| unsigned short int | 2           | 0                      | 65536                  |
| long int           | 4           | $-2^{31}$              | $2^{31} - 1$           |
| float              | 4           | $3.4 \times 10^{-38}$  | $3.4 \times 10^{+38}$  |
| double             | 8           | $1.7 \times 10^{-307}$ | $1.7 \times 10^{+307}$ |


- on UNIX, all `ints` are `long ints` unless specified as `short int`
  - **Note: there are no boolean types, use char, int, or better, unsigned char**

### Defining global Variables

- Define them above main()
  - You can also pre-initialize them. 

## Printing Out and Inputting variables

C uses formatted output. The printf funccy has a special formatting character (%) -- a char collowing this definition defines a vertain format for a variable:

| char | what       |
| ---- | ---------- |
| c    | characters |
| d    | integers   |
| f    | floats     |

```C
printf("%c %d %f", 'f', 1, 1.2);
```

`scanf()` is the same shit  for inputting values to a data structure:
```C
scanf("%c %d %f", &ch, &i, &x);
```

## Constants

Use the `const` keyword to define a constant, value can not be changed yadayadayada
```C
int const num = 5;
const int num2 = 5;
```

You can also use a preproccessor # define to do constants

It's typical to see const used in function parameters, if you know the value will not be changed;

```C
void funccy(int const *size){
    for(const int i = 0; i < size; i++){
        // stuff
    }
}
```







