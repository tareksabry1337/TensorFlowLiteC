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
            url: "https://api.github.com/repos/tareksabry1337/TensorFlowLiteC/releases/assets/164715762.zip",
            checksum: "bdb845fd8e9de2d19ab147ba05fe96a5e761cd8b874bb9002c3d2b166835bae1"
        ),
        .binaryTarget(
            name: "TensorFlowLiteCCoreML",
            url: "https://api.github.com/repos/tareksabry1337/TensorFlowLiteC/releases/assets/164715757.zip",
            checksum: "b25aa5e09684122ad3f4dd9bdd60c054d90fecc0c0622557203fded9f1f882fe"
        )
    ]
)
