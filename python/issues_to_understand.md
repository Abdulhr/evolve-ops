

## 1. Regular Expressions
To handle and remember all regex characters like:  
`^`, `$`, `.`, `*`, `+`, `?`, `|`, `[]`, `()`, `\d`, `\w`, `\s`, etc.

---

## 2. `__init__.py`


---

## 3. `sys.argv` (Command-Line Arguments)


---

## 4. `__str__`, `__repr__` (in Class)


---

###  5. Decorators Type

### Hints and static typing  
### List comprehensions  
### Dictionary comprehensions  
### Set comprehensions


---

## 6. Output Issue Example
```python
import sys
if len(sys.argv) < 2:
    print("too few arguments")
elif len(sys.argv) > 2:
    print("too many arguments")
else:
    print("hello, my name is", sys.argv[1])
````

### Observed Output

```
python Userinput1.py    
too few arguments

python Userinput1.py A
too few arguments

python Userinput1.py A B
hello, my name is B
```
