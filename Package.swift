// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "VaporAPNS",
    products: [
        .library(name: "VaporAPNS", targets: ["VaporAPNS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/json.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/vapor/clibressl.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/vapor/console.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/vapor/jwt.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/iamjono/SwiftString.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/IBM-Swift/CCurl.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(name: "VaporAPNS", dependencies: ["JSON", "CLibreSSL", "Console", "SwiftString", "CCurl", "JWT"], exclude: ["Images"]),
    ]
)
