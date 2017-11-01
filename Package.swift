// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "Levenshtein",
    products: [
        .library(
            name: "Levenshtein",
            targets: ["Levenshtein"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Levenshtein",
            dependencies: []),
        .testTarget(
            name: "LevenshteinTests",
            dependencies: ["Levenshtein"])
    ]
)
