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
                "TensorFlowLiteCMetal",
            ]
        ),
        .binaryTarget(
            name: "TensorFlowLiteC",
            url: "https://github.com/tuanemdev/LiteRT/releases/download/XCFramework/TensorFlowLiteC.xcframework.zip",
            checksum: "c45bce0693bd049565056392dce21b5000fe0e67d3f5300c4e015555aaf9e72b"
        ),
        .binaryTarget(
            name: "TensorFlowLiteCCoreML",
            url: "https://github.com/tuanemdev/LiteRT/releases/download/XCFramework/TensorFlowLiteCCoreML.xcframework.zip",
            checksum: "f05b74f022866699a0038e5dd948bc0cac1fb41a20f01b24d6b0064143f0960b"
        ),
        .binaryTarget(
            name: "TensorFlowLiteCMetal",
            url: "https://github.com/tuanemdev/LiteRT/releases/download/XCFramework/TensorFlowLiteCMetal.xcframework.zip",
            checksum: "6461fb4e0194ad7ef34bd704fd94753e05a776293906abcbc24b02489a74d272"
        ),
        .testTarget(
            name: "LiteRTTests",
            dependencies: [
                "LiteRT",
            ]
        ),
    ]
)
