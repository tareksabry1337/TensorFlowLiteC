// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "Link"
            ]
        )
    ],
    targets: [
        .target(
            name: "Link",
            linkerSettings: [.linkedLibrary("c++")]
        ),
        .binaryTarget(
            name: "TensorFlowLiteC",
            url: "https://api.github.com/repos/tareksabry1337/TensorFlowLiteC/releases/assets/162068583.zip",
            checksum: "d2fe930532b21ff4621c33a50be17e1fdae5cfc30295a4ab2691f46a786c9ca3"
        ),
        .binaryTarget(
            name: "TensorFlowLiteCCoreML",
            url: "https://api.github.com/repos/tareksabry1337/TensorFlowLiteC/releases/assets/162068582.zip",
            checksum: "80365740f42e406aaf2b62404d049dbee0a307076459b4cce753f6a24e569cea"
        )
    ]
)
