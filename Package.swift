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
        .testTarget(
            name: "AnalyticsConnectorTests",
            dependencies: ["AnalyticsConnectorPack"],
            path: "Tests/AnalyticsConnectorTests",
            exclude: ["Info.plist"]),
    ]
)
