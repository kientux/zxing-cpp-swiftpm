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
            url: "https://github.com/kientux/zxing-cpp-swiftpm/releases/download/0.0.2/ZXingCpp.xcframework.zip",
            checksum: "ca0e9c910e114ffcbcddb56cd14e0722057ee154fc91567f26c81e4c19971b72"
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
