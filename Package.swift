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
            url: "https://github.com/kientux/zxing-cpp-swiftpm/releases/download/0.0.1/ZXingCpp.xcframework.zip",
            checksum: "17404d8fc402b70d824fff0fd35eb44fc3e1a623a8d56a74c0fa4207b0d6acc6"
        ),
        .target(
            name: "ZXingCppWrapper",
            dependencies: ["ZXingCpp"],
            path: "zxing-cpp/wrappers/ios/Sources/Wrapper",
            publicHeadersPath: ".",
            cxxSettings: [
                .unsafeFlags(["-stdlib=libc++"]),
                .unsafeFlags(["-std=gnu++17"])
            ]
        )
    ]
)
