# 5106 Programming Languages, More datatypes
### Austin Lyksett
### Date: 2023-09-16

---


## Structures

Structs are like new little object things:

```C
struct gun{
    char name[60];
    int magazines;
    float caliber;
};

...

struct gun pewpew;


Or you can make it a variable right after:

struct gun{
    char name[60];
    int magazines;
    float caliber;
} pewpew;


```


Structs can be pre-initialized at declaration:



```C
struct gun pew = {"Uzi", 50,7.0};
```

To access, use the dot operator

```C
pew.magazines = 200;
```


### Typedefs

```C
typedef struct gun{
    char name[60];
    int magazines;
    float caliber;
} agun;

...

agun g = {"asd", 2, 2.0};

g is a variable of type agun. There's not much use for gun anymore, but it's there.
```

We can do arrays of structs like:


```C
agun guns[1000];
```

## Unions

Unions are a thing that may hold (at different times) different objects of types and sizes.


```C
union number{
    short shortnum;
    long longnum;
    double doublenum;
}aNumber;

```

This defines a union called number and instance of it called `aNumber`. number is a `union tag` and acts in the same way as a tag for a normal struct.


Members are accessed in the same way:

`anumber.longnum;`


So basically, `number` can be one of several values, `short, long, double`. The C compiler will always allocate the largest amount of space for it (`long`).


Now from here, we can get into weird OOP stuff with embedded tags and unions and structs:

```C

typedef struct{
    int maxpassengers;
}jet;

typedef struct{
    int liftcapacity;
}helicopter;

typedef struct{
    int maxpayload;
}cargoplane;

typedef union{
    jet jetu;
    helicopter helicopteru;
    cargoplane cargoplaneu;
}aircraft_type;

typedef struct {
    aircrafttype kind;
    int speed;
    aircraft description;
}an_aircraft;


"This defines a base union aircraft which may either be jet, helicopter, or cargoplane".

In the an_aircraft strict, ther is a kind member which indicates which strict is being held at the time.


This above looks stupid, but it's what the website has... it was written 24 years ago and has been sussy reading so who knows

```


## Coercion or type-casting

C allows ***coercion***, that is, forcing a variable of one type to be another type. C allows this using a cast operatis (), so:

```C
int integernumber;
float floatnumber = 1.9;
integernumber = (int)floatnumber;

the .9 is thrown away. integernumber is now 1


You can get cool and do it to chars to get their ASCII number:

char c = "A"
int rep = (int)c
> rep = 65

```

## Enumerated types

Enumerated types contain a list of constants that can be addressed as integer values.


We can declare them as such:

```C
enum days = {mon, tues, wed, ...} week;
enum days week1, week2

We can now access days with dot on the week vars:

mon = week1[1]

```

## Static Variables

A static variale is a variable that is local to a single function, but the cool thing is that it's contents remain **intact** after the function exits.

Declare it with a `static` keyword.
