```hack
function foo(x: int): int {
  if (x < 0) {
    throw new Exception("Input must be non-negative");
  }
  return x + 1;
}

function bar(x: int): int {
  try {
    return foo(x) * 2;
  } catch (Exception e) {
    echo "Error: ", e->getMessage();
    return 0; // Or any other suitable default value
  }
}

function main(): void {
  echo bar(5);
  echo bar(-5);
}
```