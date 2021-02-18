// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftTwisterCore",
    products: [
        .library(
            name: "SwiftTwisterCore",
            targets: ["SwiftTwisterCore"])
    ],
    dependencies: [
        .package(url: "https://github.com/amraboelela/TwisterCore", .branch("master")),
    ],
    targets: [
        .target(name: "SwiftTwisterCore", dependencies: ["TwisterCore"]),
    ]
)
