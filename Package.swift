// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "ZXingCppWrapper",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ZXingCppWrapper",
            type: .static,
            targets: ["ZXingCppWrapper"])
    ],
    targets: [
        .binaryTarget(
            name: "ZXingCpp",
            url: "https://github.com/kientux/zxing-cpp-swiftpm/releases/download/0.0.4/ZXingCpp.xcframework.zip",
            checksum: "69efa367a5193748bc1d87464bb04c5977fff5cf41b7747897e209bc43cadce7"
        ),
        .target(
            name: "ZXingCppWrapper",
            dependencies: ["ZXingCpp"],
            path: "Sources/Wrapper",
            publicHeadersPath: ".",
            cxxSettings: [
                .unsafeFlags(["-stdlib=libc++"]),
                .unsafeFlags(["-std=gnu++17"])
            ]
        )
    ]
)
