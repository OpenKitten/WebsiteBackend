// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WebsiteBackend",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/OpenKitten/Leopard.git", .revision("master")),
        .package(url: "https://github.com/OpenKitten/Meow.git", .revision("framework")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "WebsiteBackend",
            dependencies: ["Meow", "Leopard"]),
    ]
)
