// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "analytics-connector-ios",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_13),
        .tvOS(.v9),
        .watchOS(.v3)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AnalyticsConnectorPack",
            targets: ["AnalyticsConnectorPack"]
        ),
        .library(
            name: "AnalyticsConnectorFramework",
            targets: ["AnalyticsConnectorFramework"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        .target(
            name: "AnalyticsConnectorPack",
            path: "Sources/AnalyticsConnector",
            exclude: ["Info.plist"]),
        .binaryTarget(name: "AnalyticsConnectorFramework",
            url: "https://github.com/amplitude/analytics-connector-ios/releases/download/v1.3.1/AnalyticsConnector.xcframework.zip",
            checksum: "e1817080261a7d156c43c5e79954a00917a2c5682bddf3a2ba9a498aa68f7c9f"),
        .testTarget(
            name: "AnalyticsConnectorTests",
            dependencies: ["AnalyticsConnectorPack"],
            path: "Tests/AnalyticsConnectorTests",
            exclude: ["Info.plist"]),
    ]
)
