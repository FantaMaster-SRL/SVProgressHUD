// swift-tools-version:5.3
 
import PackageDescription

let package = Package(
    name: "SVProgressHUD",
    platforms: [
        .iOS(.v12), 
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "SVProgressHUD",
            targets: ["SVProgressHUD"]
        )
    ],
    targets: [
        .target(
            name: "SVProgressHUD",
            dependencies: [],
            path: "SVProgressHUD",
            exclude: ["SVProgressHUD-Prefix.pch"],
            resources: [
                .process("SVProgressHUD.bundle/angle-mask.png"),
                .process("SVProgressHUD.bundle/angle-mask@2x.png"),
                .process("SVProgressHUD.bundle/angle-mask@3x.png"),
                .process("SVProgressHUD.bundle/error.png"),
                .process("SVProgressHUD.bundle/error@2x.png"),
                .process("SVProgressHUD.bundle/error@3x.png"),
                .process("SVProgressHUD.bundle/info.png"),
                .process("SVProgressHUD.bundle/info@2x.png"),
                .process("SVProgressHUD.bundle/info@3x.png"),
                .process("SVProgressHUD.bundle/success.png"),
                .process("SVProgressHUD.bundle/success@2x.png"),
                .process("SVProgressHUD.bundle/success@3x.png"),
                .copy("PrivacyInfo.xcprivacy")
            ],
            publicHeadersPath: "include"
        )
    ]
)

