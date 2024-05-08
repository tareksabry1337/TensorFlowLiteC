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
            url: "https://api.github.com/repos/tareksabry1337/TensorFlowLiteC/releases/assets/166710566.zip",
            checksum: "c80bac956eccbd7dfd5aa121530f3277db137d06fc858816ea07356e06ead399"
        ),
        .binaryTarget(
            name: "TensorFlowLiteCCoreML",
            url: "https://api.github.com/repos/tareksabry1337/TensorFlowLiteC/releases/assets/166710559.zip",
            checksum: "38ec59993db37aa27ed636fab6d3f9bbddd84fae5dd0757df71d6157470dfa23"
        )
    ]
)
