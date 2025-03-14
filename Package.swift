// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LiteRT",
    products: [
        .library(
            name: "LiteRT",
            targets: ["LiteRT"]
        ),
    ],
    targets: [
        .target(
            name: "LiteRT"
        ),
        .testTarget(
            name: "LiteRTTests",
            dependencies: ["LiteRT"]
        ),
    ]
)
