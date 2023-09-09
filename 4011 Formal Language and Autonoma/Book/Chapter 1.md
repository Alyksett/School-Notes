# 4011 Formal Language and Autonoma, Chapter 1
### Austin Lyksett
### Date: 2023-09-09

---
# [0.1]

## What are the fundamental capabilities and limitations of computers?

There are three areas that this is concerned with:
- Automata
- Computability
- Complexity

For each of these, this question is interpreted differently, starting from the end;


### Complexity Theory

Some problems easy (Sorting), some problems hard (Scheduling). _What makes some problems easy and some problems hard?_
We don't have a good answer to this but we have made systems to categorize different problems by how _hard_ they are.

Basically, is this problem easy or hard?

### Computability Theory

Computability theory discusses what computers can physically do. For example computers cannot prove mathematical statements (while humans can)

Like complexity theory, computability theory divides problem into ones that are *computable* or *not computable*.

### Automata Theory

Automata Theory deals with the definitions and properties of mathematical models of computation, these play roles in several applied areas of CS.

One example is *finite automaton*, used in text processing, compilers and hardware design. Another model is *context-free grammar*, used in programming languages and AI.


# [0.2]

## Mathematical Notions and Terminology

### Sets

Largely review
- A multiset is a set with repeat elements
- $\mathbb{N}$ -> ${ 0 , 1, 2, ...}$
- $\mathbb{Z}$ -> ${ ... -1, 0, 1, ...}$
- A set with two members is an *unordered pair*

If we want to describe a set containint elements according to some rule, we will write it as
$\{{n | rule\ about\ n}\}$ , thus $\{{n | n = m^2 for\ some\ m \in \mathbb{N}}\}$

- The complement of A, written ${A^\complement}$ is the set of all elements that are not in A.


### Sequences and Tuples

A *sequence* of objects in a list is an ordered list, usually written in parenthesis. Finite sequences are called Tuples. A 2-tuple is an *ordered pair*

If A and B are two sets, the *Cartesian Product* or *cross product* of these two sets is the set of all ordered pairs wherin the first element is a member of A and the second is a member of B.

***Example***

- If A = {1, 2} and B = {x, y, z},
  - A x B = {(1, x), (1, y), (1, z), (2, x), (2, y), (2, z)}
  

- The set $\mathbb{N}^2 = \mathbb{N} \times \mathbb{N}$ consists of all ordered pairs of natural numbers. We also may write it as {(i, j) | i, j >= 1}
  

### Functions and Relations
w
A function is a object that sets up an input-output relationship. In every function, the same input produces the same output. If f is a function whos output is b when the input is a, then we write it as:

$f(a)=b$

A function is also called a **mapping**, and, if $f(a)=b$, we say that $f$ maps a to b.

The set of possible inputs to a function is called its *domain*. The output of a function is caleld its range. The notion for saying that $f$ is a function with domain $D$ and range $R$ is

$f:\ D \rightarrow R $


In the case of the $abs$ function, if we're working with integers the domain and range are $\mathbb{Z} \rightarrow \mathbb{Z}$. For an addition function we would express it as $\mathbb{Z} \times \mathbb{Z}$.

$abs$ will never output all elements in it's range: $\mathbb{Z}$, a function that does use all elements in it's range is said to be *onto* the range.



***Example***

Consider the function $f: {0, 1, 2, 3, 4} \rightarrow {0, 1, 2, 3, 4}$.



|n|f(n)|
|--|--|
|0|1|
|1|2|
|2|3|
|3|4|
|4|0|

This function adds 1 to it's input and returns the result modulo 5.


Modular arithmatic is defined as $Z_m = {0, 1, 2, ..., m -1}$. With this notation, the previous function can be represented as

$f: \mathbb{Z_5} \rightarrow \mathbb{Z_5}$.


We can also define two dimentional funcitons as;

|g|0|1|2|3|
|-|-|-|-|-|
|0|0|1|2|3|
|1|1|2|3|0|
|2|2|3|0|1|
|3|3|0|1|2|

the function g is $g: \mathbb{Z_4} \times \mathbb{Z_4} \rightarrow \mathbb{Z_4}$


When the domain of a function $f$ is $A_1 \times  ... \times A_k$ for some sets $A_1 \times  ... \times A_k$, the input to $f$ is is a k-tuple $(a_1, a_2, ... , a_k)$. $a_i$ is the *argument* to $f$.

A function with k arguments is called a k-ary function and k is the *arity* of the function.

A **predicate** or **property** function is a function whos range is ${True, False}$.

A property whos domain is a set of k-tuples is called a *relation*, a *k-ary relation*, or a *k-ary relation on A*. A common case is the 2-ary relation, called a *binary relation*. For example the greater than or less than operators; $>, <, \leq, \geq$ which use *infix* notation.

***Example***

The game rock paper scissors can be expressed:

|beats|rock|paper|scissors|
|-|-|-|-|
|scissors|False|True|False|
|rock|False|False|True|
|paper|True|False|True|


We can also express this relation in such a way;

${(scissors, paper), (paper, stone), (stone, scissors)}$

A special type of binary relation, called an *equivalence relation* captures the notion of two objects being equal in some feature. A binary relation R is an equivalence relation if R satisfies three conditions:
1. R is **reflexive** if for every $x,\ xRx$
2. R is **symmetric** if for every $x, y,\ xRy\ implies\ yRx$, and 
3. R is **transitive** if for every $x, y\ and\ z, xRy\ and\ yRx\ implies\ xRz$
   
   
