// swift-tools-version:5.7.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyBeaver",
    platforms: [
        .macOS(.v11),
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v4)
    ],
    products: [
        .library(name: "SwiftyBeaver", targets: ["SwiftyBeaver"])
    ],
    targets: [
        .target(name: "SwiftyBeaver", path: "Sources", resources: [.process("Resources/PrivacyInfo.xcprivacy")]),
        .testTarget(name: "SwiftyBeaverTests", dependencies: ["SwiftyBeaver"]),
    ],
    swiftLanguageVersions: [.v5]
)
