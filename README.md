# Unhandled Exception in Dart Asynchronous Operations

This repository demonstrates a common error in asynchronous operations in Dart and provides a more robust solution.

## Bug Description
The original `fetchData` function handles basic network errors. However, it lacks detailed error logging and doesn't distinguish between different types of exceptions.  This makes debugging and identifying the root cause of failures more difficult.

## Solution
The improved version in `bugSolution.dart` adds more specific exception handling, logging, and provides better information for debugging.

## How to Run
1. Clone this repository.
2. Run `dart bug.dart` to see the original, less robust version.
3. Run `dart bugSolution.dart` to see the improved version with better error handling.