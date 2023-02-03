# zxing-cpp-swiftpm

### Swift Package Manager support for zxing-cpp iOS wrapper.

## Why

`zxing-cpp` iOS wrapper is already a SPM package, but currently users have to clone zxing-cpp, build it locally to produce `.xcframework` then put the iOS wrapper into project. This repo is for directly integrate into Xcode SPM, or `Package.swift` dependencies.

## Instruction for new release

- Run `build.sh` to build `zxing-cpp` xcframework
- Update url and checksum of binaryTarget in `Package.swift`
- Upload xcframework zip to github release