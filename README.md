### Compile program

```
cairo-compile src/main.cairo --output build/main_compiled.json
```

### Run program with print outs

```
cairo-run --program build/main_compiled.json --print_output --layout=small
```

### Assert n in range [0,3]

```
assert n * (n - 1) * (n - 2) * (n - 3) = 0
```
