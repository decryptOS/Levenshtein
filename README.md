# Levenshtein
Tiny Swift implementation of the Levenshtein algorithm

See https://en.wikipedia.org/wiki/Levenshtein_distance

# Usage
```swift
let a = "Apple"
let b = "Apples"
assert(levenshteinDistance(a, b) == 1)
// 1 because 1 change is necessary to transform between a and b
```
