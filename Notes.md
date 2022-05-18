# Data Type Ids:
0 - Uninitialized Data! Error? 
1 - Number -> Ptr
2 - Boolean -> Ptr
3 - Identifier -> Ptr
4 - String -> Ptr
5 - List -> Ptr to LinkedList
6 - Function -> Ptr InitialisedFuncitonPointer
7 - 
8 - 
9 - Null / Nil

# Translate IR to Asm:
## Steps:
### StaticData:

- define actual
- define parents 

# call structure for functions

### step zero
set current scope to new scope for the duration

### step one
push __empty_to_output_to
push arg
call func
add esp,4

### step two
