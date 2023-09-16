# 4011 Formal Language and Autonoma- Assignment 1
### Austin Lyksett 
### Date: 2023-09-14

---


 #### 1.3 Give the state diagram of the following machine:
  
|       | $\text{u}$ | $\text{d}$ |
| ----- | ---------- | ---------- |
| $q_1$ | $q_1$      | $q_2$      |
| $q_2$ | $q_1$      | $q_3$      |
| $q_3$ | $q_2$      | $q_4$      |
| $q_4$ | $q_3$      | $q_5$      |
| $q_5$ | $q_4$      | $q_5$      |




```mermaid
stateDiagram-v2
Direction LR
classDef acceptState font-style:italic,font-weight:bold
   [*] --> q3
   q1 --> q1: u
   q1 --> q2: d
   q2 --> q1: u
   q2 --> q3::: acceptState: d
   q3 --> q2: u
   q3 --> q4: d
   q4 --> q3: u
   q4 --> q5: d
   q5 --> q4: u
   q5 --> q5: d

```
---

### 1.4 Construct the state diagram for the following definitions:

- e) $\text{w | w starts with a and has at has at most one b}$:



```mermaid
stateDiagram-v2
Direction LR
classDef acceptState font-style:italic,font-weight:bold
   [*] --> q1
   q1 --> q2: a
   q1 --> q3: b
   q2 --> q2: a
   q2 --> q4: b
   q4 --> q3: b
   q4 --> q4::: acceptState : a
   q3 --> q3: a
```

- f)  $\text{{w| w has an odd number of a’s and ends with ab}}$


```mermaid
stateDiagram-v2
Direction LR
classDef acceptState font-style:italic,font-weight:bold
    [*] --> even
    even --> even: b
    even --> odd: a
    odd --> oddab::: acceptState : b
    oddab --> odd: b
    oddab --> even: a
    odd --> even: a
```

- g) $\text{ w| w has even length and an odd number of a’s}$
  - Given 0 is even
  - odd_total_... will always go to even_total_...
  - ..._even_a will always go to ..._odd_a on an `a`

```mermaid
stateDiagram-v2
Direction LR
classDef acceptState font-style:italic,font-weight:bold
    [*] --> even_total_even_a
    even_total_even_a --> odd_total_odd_a: a
    even_total_even_a --> odd_total_even_a: b
    odd_total_odd_a --> even_total_odd_a::: acceptState : b
    odd_total_odd_a --> even_total_even_a: a
    odd_total_even_a --> even_total_odd_a: a
    odd_total_even_a --> even_total_even_a: b
    even_total_odd_a --> odd_total_odd_a: b
    even_total_odd_a --> odd_total_even_a: a
```

### 1.5 Constrict the state diagram for the simpler language
- c) $\text{w | w contains neither the substrings ab nor ba}$
    - This definition states there can only ever be a sequence of a's, or a sequence of b's
```mermaid
stateDiagram-v2
Direction LR
classDef acceptState font-style:italic,font-weight:bold
   [*] -->  start
   start --> a_1: a
   a_1 --> b_1::: acceptState : b
   a_1 --> a_1: a
   start --> b_0: b
   b_0 --> a_0::: acceptState : a
   b_0 --> b_0: b

    b_1 --> b_1: a,b
    a_0 --> a_0: a,b
```


- g) $\text{w | w is a string that doesn't contain exactly two a's}$


```mermaid
stateDiagram-v2
Direction LR
classDef acceptState font-style:italic,font-weight:bold
   [*] --> start
    start --> a_0: a
    start --> b_0::: acceptState : b
    b_0 --> a_0: a
    b_0 --> b_0: b
    a_0 --> a_1: a
    a_0 --> a_0::: acceptState : b
    a_1 --> a_1: b
    a_1 --> a_n::: acceptState : a
    a_n --> a_n: a,b

```

- h) $\text{w | w is any string except a and b}$
  - $\text{Therefore, we want to build a machine that accepts only strings 'a', or 'b'}$

```mermaid
stateDiagram-v2
Direction LR
classDef acceptState font-style:italic,font-weight:bold
   [*] --> start
   start --> ab::: acceptState : a,b
   ab --> ab_n: a,b
   
```
### 1.6
- k) $\{\epsilon, 0\}$

```mermaid
stateDiagram-v2
Direction LR
classDef acceptState font-style:italic,font-weight:bold
   [*] --> start::: acceptState 
   start --> 0_1::: acceptState : 0
   0_1 --> end: 0,1
   start --> end: 1
   
```

- l) $\text{w | w contains an even number of 0s, or contains exactly two 1s}$

```mermaid
stateDiagram-v2
Direction LR
classDef acceptState font-style:italic,font-weight:bold
    [*] --> even_0_zero_1
    even_0_zero_1 --> odd_0_zero_1: 0
    even_0_zero_1 --> even_0_one_1: 1
   
    even_0_one_1 --> even_0_two_1::: acceptState : 1
    even_0_one_1 --> odd_0_one_1: 0
   
    odd_0_zero_1 --> even_0_zero_1: 0
    odd_0_zero_1 --> odd_0_one_1: 1

    odd_0_one_1 --> even_0_one_1: 0
    odd_0_one_1 --> odd_0_two_1: 1

    even_0_two_1 --> odd_0_two_1: 0
    even_0_two_1 --> sink: 1

    odd_0_two_1 --> even_0_two_1: 0
    odd_0_two_1 --> sink: 1
```


- m) $\emptyset$
    - Note, the starting black circle is the accept state
 ```mermaid
 stateDiagram-v2
 Direction LR
 classDef acceptState font-style:italic,font-weight:bold
    [*] --> sink: 0,1

 ```

```












```