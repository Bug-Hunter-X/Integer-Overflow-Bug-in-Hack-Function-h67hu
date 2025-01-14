```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function main(): void {
  echo bar(5);
}
```
This code has a potential integer overflow bug.  If the input `x` to `foo` is large enough, adding 1 could result in an integer overflow, leading to unexpected behavior.  The `bar` function then multiplies this potentially overflown value, further amplifying the error.

The bug is subtle because Hack's type system doesn't inherently prevent integer overflow, only checks for type correctness. 