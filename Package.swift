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
    )
  ],
  targets: [
    .binaryTarget(
      name: "Stripe",
      url: "https://d37ugbyn3rpeym.cloudfront.net/terminal/payments-ios-releases/20.9.9-test3/Stripe.xcframework.zip",
      checksum: "1e0ee6f1fae17b8443cd5c628beb3da464a15e73d6fa9dc1bdae8a4474002a51"
    )
  ]
)
