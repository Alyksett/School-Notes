# 5106 Programming Languages, Conditionals
### Austin Lyksett
### Date: 2023-09-16

---

Most of this is review but there's some new bits:

### The ? operator 

The ternary operator `?` is a more efficient form for expressing simple `if else if else` statements. It has the following form:

$expression_1\  ?\  expression_2: \ expression_3$

Which simply states:

`if expression1, then expression2, else expression3`

For example to assign the maximum of a and b to z:

```C
z = (a>b) ? a : b;
```

### Switch statement

```C
switch(expression){
    case item1:
        statement;
        break;
    case item2:
        statement;
        break;
    case ...
        ...
    case itemn:
        statement;
        break;    
}

```

for each $item_i$, the item must be a constant, varibles are not allowed, for example:

```C

switch(letter){
    case 'P':
    case 'U':
    case 'N':
    case 'K':
        numberK++;
        break;
    default:
        nice++
        break;
}

```






