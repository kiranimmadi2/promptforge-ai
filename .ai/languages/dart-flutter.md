# Dart & Flutter Development Guidelines

Use these rules when writing Dart or building Flutter applications.

## Code Style & Best Practices
*   Follow official [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines.
*   Prefer robust, descriptive widget trees. Keep build methods pure.
*   Use `const` constructors wherever possible to optimize rendering performance.
*   Leverage modern state management patterns (e.g., Riverpod, Bloc, Provider) consistently.
*   Always use strong typing; avoid using `dynamic` unless strictly necessary.

## Slicing Context (Token Optimization)
To save context tokens:
*   Do not import javascript/python guidelines.
*   Only reference this file and the corresponding stack file (`mobile.md`).

## Testing Guidance
*   Write widget tests for core reusable UI elements.
*   Use standard `flutter test` for unit and widget testing.
*   Mock dependencies using Mockito or mocktail.

## Common Mistakes to Avoid
*   Updating state directly inside build methods.
*   Leaving unused imports or unanalyzed warnings. Always run `flutter analyze`.
