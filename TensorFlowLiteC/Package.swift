// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: ["TensorFlowLiteC"]
        )
    ],
    targets: [
        .target(
            name: "TensorFlowLiteC"
        )
    ]
)
