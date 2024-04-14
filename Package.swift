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
            url: "https://api.github.com/repos/tareksabry1337/TensorFlowLiteC/releases/assets/162045075.zip",
            checksum: "0b05a4c1353c905df8d88b4f837e7ec42c5457895d04209db0e4d09b2b2264c7"
        ),
        .binaryTarget(
            name: "TensorFlowLiteCCoreML",
            url: "https://api.github.com/repos/tareksabry1337/TensorFlowLiteC/releases/assets/162045072.zip",
            checksum: "0afea7d23f9481906ad6b84455ad5ae751cfb4a47d83924b3e5fb9836c46d13f"
        )
    ]
)
