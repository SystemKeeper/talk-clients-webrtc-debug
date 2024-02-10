// swift-tools-version:5.7.1
import PackageDescription

let webrtcVersion = "121.6167.0"
let webrtcChecksum = "d73bcdf6bbc2208a7d0bcf9af3086df07b83455f1e4c165ac364e3ad1bd62143"

let package = Package(
    name: "WebRTC",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "WebRTC",
            targets: ["WebRTC"])
    ],
    targets: [
        .binaryTarget(
            name: "WebRTC",
            url: "https://github.com/SystemKeeper/talk-clients-webrtc-debug/releases/download/\(webrtcVersion)/WebRTC.xcframework.zip",
            // Generate checksum with `swift package compute-checksum WebRTC.xcframework.zip`
            checksum: webrtcChecksum
        ),
    ]
)