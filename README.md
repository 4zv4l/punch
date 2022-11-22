# punch
crunch like password generator in Perl
> Thanks to [Mega](https://github.com/Megaaaaaa) for the help

# Usage
```
usage: ./crunch <min> <max> [characters]

min: minimum length
max: maximum length
characters: characters to use
```

# Example

```
➜ ./crunch.pl 2 2 ab
number of lines: 4
number of bytes: 12
aa
ab
ba
bb
```
- the script waits 2 seconds to be sure you don't create a file too big in case you redirect `stdout` to a file
- the two first lines (info) are wrote to `stderr`
- the number of bytes counts the newline characters
