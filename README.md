# Levenshtein
Tiny Swift implementation of the <a href=https://en.wikipedia.org/wiki/Levenshtein_distance>Levenshtein algorithm</a>

# Installation

## Swift Package Manager

To use this package with the <a href=https://swift.org/package-manager/>Swift Package Manager</a> you include this repository in your `Package.swift` file:

```swift
import PackageDescription

let package = Package(
    // ...
    dependencies: [
        // ...
        .Package(url: "https://github.com/decryptOS/Levenshtein.git", majorVersion: 0, minor: 1),
        // ...
    ]
)
```

# Usage
```swift
import Levenshtein

// ...

let a = "Apple"
let b = "Apples"
assert(levenshteinDistance(a, b) == 1)
// 1 because 1 change is necessary to transform between a and b
```
