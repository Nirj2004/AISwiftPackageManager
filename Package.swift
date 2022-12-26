import PackageDescription
let package = Package(
    name: "OpenAISwift",
    products: [
        .library(
            name: "OpenAISwift",
            targets: ["OpenAISwift"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "OpenAISwift",
            dependencies: []),
        .testTarget(
            name: "OpenAISwiftTests",
            dependencies: ["OpenAISwift"]),
    ]
)