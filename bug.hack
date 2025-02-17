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
This code will produce unexpected results if the `foo` function throws an exception. The `bar` function does not handle this case, and the program will terminate unexpectedly.