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
      targets: ["Stripe", "Stripe3DS2"]
    )
  ],
  targets: [
    .binaryTarget(
      name: "Stripe",
      url: "https://github.com/stripe/stripe-ios/releases/download/yuki%2FvFoo/Stripe.xcframework.zip",
      checksum: "936098bfc2f0da071daacdd13ce8c750e696173222f8ca66228145e8db1fe27c"
    ),
    .binaryTarget(
      name: "Stripe3DS2",
      url: "https://github.com/stripe/stripe-ios/releases/download/yuki%2FvFoo/Stripe3DS2.xcframework.zip",
      checksum: "6a1cc6ed21ddad4a19b9b76678ace3cd1d2ad282dedbfa875c542574a8a6f0e6"
    )
  ]
)
