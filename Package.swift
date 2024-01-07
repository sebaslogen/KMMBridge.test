// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/sebaslogen/KMMBridge.test/io/github/sebaslogen/kmmbridge/allshared-kmmbridge/0.1.2/allshared-kmmbridge-0.1.2.zip"
let remoteKotlinChecksum = "a83a8d363f6dbc228b4bcc73061a03348b0e07d55a25f8afb6415967ec81ecd5"
let packageName = "allshared"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)