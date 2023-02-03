# zxing-cpp-swiftpm

### Swift Package Manager support for zxing-cpp iOS wrapper.

## Why

`zxing-cpp` iOS wrapper is already a SPM package, but currently users have to clone zxing-cpp, build it locally to produce `.xcframework` then put the iOS wrapper into project. This repo is for directly integrate into Xcode SPM, or `Package.swift` dependencies.

## Instruction

Use branch instead of tag/release because this package contains `cxxSettings unsafeFlags` which is not allowed for versioned package.

```
dependencies: [
    // Dependencies declare other packages that this package depends on.
    .package(url: "https://github.com/kientux/zxing-cpp-swiftpm.git", 
            .branch("release-0.0.2"))
],
```

## Instruction for new release

- Run `build.sh` to build `zxing-cpp` xcframework
- Update url and checksum of binaryTarget in `Package.swift`
- Upload xcframework zip to github release