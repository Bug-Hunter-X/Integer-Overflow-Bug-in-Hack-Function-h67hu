```hack
function foo(x: int): int {
  if (x >= 2147483647) {
    return 2147483647; //Handle overflow
  } else {
    return x + 1;
  }
}

function bar(x: int): int {
  if (x > 2147483647 / 2) { // Prevent overflow in multiplication
     return 2147483647; //Handle overflow
  } else {
     return foo(x) * 2;
  }
}

function main(): void {
  echo bar(5);
  echo bar(2147483647); // Test case near the limit
}
```