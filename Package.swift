// swift-tools-version: 5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DataDrivenTesting",
    products: [
        .library(
            name: "DataDrivenTesting",
            targets: ["DataDrivenTesting"]
        ),
    ],
    targets: [
        .target(
            name: "DataDrivenTesting",
            dependencies: []
        ),
        .testTarget(
            name: "DataDrivenTestingTests",
            dependencies: ["DataDrivenTesting"]
        ),
    ]
)
