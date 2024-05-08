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
            url: "https://api.github.com/repos/tareksabry1337/TensorFlowLiteC/releases/assets/166723986.zip",
            checksum: "1617d8755979a8bac573096324588ca47a46bf4787f481efcdf7d3d871f0cbaf"
        ),
        .binaryTarget(
            name: "TensorFlowLiteCCoreML",
            url: "https://api.github.com/repos/tareksabry1337/TensorFlowLiteC/releases/assets/166723973.zip",
            checksum: "675a18a3e2186ac7eae37ee0975810a8b7c9c6523035a9379882f173707b7534"
        )
    ]
)
