// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Apxor-iOS-SPM-Test",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Apxor-iOS-SPM-Test",
            targets: ["Apxor-iOS-SPM-Test"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Apxor-iOS-SPM-Test",
            dependencies: ["ApxorCore"]
        ),
        .binaryTarget(
            name: "ApxorCore",
            url: "https://repo.apxor.com/artifactory/libs-release-ios/core/21044/ApxoriOSSDK-Core-21044.zip",
            checksum: "299e4ba6c48d5159b4bd6db1193f1dac4a9fdbc43248b100a641adc82c478570"
        )
    ]
)
