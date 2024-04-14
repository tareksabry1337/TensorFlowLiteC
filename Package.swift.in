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
            url: "{{TENSOR_FLOW_LITE_C_API_URL}}",
            checksum: "{{TENSOR_FLOW_LITE_C_CHECKSUM}}"
        ),
        .binaryTarget(
            name: "TensorFlowLiteCCoreML",
            url: "{{TENSOR_FLOW_LITE_C_CORE_ML_API_URL}}",
            checksum: "{{TENSOR_FLOW_LITE_C_CORE_ML_CHECKSUM}}"
        )
    ]
)
