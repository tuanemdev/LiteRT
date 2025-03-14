// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LiteRT",
    products: [
        .library(
            name: "LiteRT",
            targets: [
                "LiteRT",
            ]
        ),
    ],
    targets: [
        .target(
            name: "LiteRT",
            dependencies: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
            ]
        ),
        .binaryTarget(
            name: "TensorFlowLiteC",
            url: "https://github.com/tuanemdev/LiteRT/releases/download/XCFramework/TensorFlowLiteC.xcframework.zip",
            checksum: "1617d8755979a8bac573096324588ca47a46bf4787f481efcdf7d3d871f0cbaf"
        ),
        .binaryTarget(
            name: "TensorFlowLiteCCoreML",
            url: "https://github.com/tuanemdev/LiteRT/releases/download/XCFramework/TensorFlowLiteCCoreML.xcframework.zip",
            checksum: "675a18a3e2186ac7eae37ee0975810a8b7c9c6523035a9379882f173707b7534"
        ),
        .testTarget(
            name: "LiteRTTests",
            dependencies: [
                "LiteRT",
            ]
        ),
    ]
)
