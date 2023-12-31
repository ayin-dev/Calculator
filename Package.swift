// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.
// version 1.0.3

import PackageDescription

let package = Package(
    name: "Calculator",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Calculator",
            targets: ["Calculator", "Logic"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apple/swift-log.git", from: "1.0.0")
    ],
    targets: [
        .binaryTarget(name: "Logic", path: "./Logic_Framework.xcframework"),
        .binaryTarget(name: "Calculator", path: "./Calculator-framework.xcframework"),
        //Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        //.target(
        //    name: "Calculator",
        //    dependencies: []),
        //.testTarget(
        //    name: "CalculatorTests",
        //    dependencies: ["Calculator"]),
    ]
)
