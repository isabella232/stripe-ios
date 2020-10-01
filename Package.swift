// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "Stripe",
    defaultLocalization: "en",
    platforms: [
      .iOS(.v11)
    ],
  products: [
    .library(
      name: "Stripe",
      targets: ["Stripe"]
    ),
  ],
  targets: [
    .target(
      name: "Stripe",
      dependencies: ["Stripe3DS2"],
      path: "Stripe",
        exclude: ["BuildConfigurations", "Info.plist", "PublicHeaders/Stripe/Stripe3DS2-Prefix.pch"],
        resources: [
          .process("Info.plist"),
          .process("Resources/Images"),
          .process("Resources/au_becs_bsb.json"),
          .process("ExternalResources/Stripe3DS2.bundle"),
        ],
        publicHeadersPath: "PublicHeaders",
        cSettings: [
          .headerSearchPath("."),
          .headerSearchPath("PublicHeaders/Stripe"),
        ]
    ),
    .binaryTarget(
      name: "Stripe3DS2",
      url: "https://github.com/stripe-ios/stripe-3ds2-ios-releases/releases/download/20.0.2/Stripe3DS2.xcframework.zip",
      checksum: "4c33947f6ffcdeca33efb83cd6563e6f57f8c91dcf1b9f2e36085731df86f0d0"),
  ]
)
