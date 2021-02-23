// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftTwisterCore",
    products: [
        .library(name: "SwiftTwisterCore", targets: ["SwiftTwisterCore", "twistercore"])
    ],
    dependencies: [
        .package(url: "https://github.com/amraboelela/bitcoinleveldb", .branch("master")),
        .package(url: "https://github.com/amraboelela/jsonspirit", .branch("master")),
        .package(url: "https://github.com/amraboelela/openssl", .branch("master")),
    ],
    targets: [
        .target(name: "SwiftTwisterCore", dependencies: ["CTwisterCore"]),
        .target(name: "CTwisterCore", dependencies: ["twistercore"]),
        .target(name: "twistercore", dependencies: ["bitcoinleveldb", "jsonspirit", "openssl"]),
        .testTarget(name: "SwiftTwisterCoreTests", dependencies: ["SwiftTwisterCore"]),
    ]
)
