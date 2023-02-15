import ProjectDescription

let project = Project(
    name: "DependentWatchApp",
    targets: [
        Target(
            name: "App",
            platform: .iOS,
            product: .app,
            bundleId: "io.tuist.App",
            infoPlist: .default,
            sources: [
                "Sources/**",
            ],
            resources: [
                "Resources/**",
            ],
            dependencies: [
                .target(name: "WatchApp"),
                .target(name: "Framework_a_ios"),
            ]
        ),
        Target(
            name: "Framework_a_ios",
            platform: .iOS,
            product: .framework,
            productName: "FrameworkA",
            bundleId: "io.tuist.framework.a"
        ),
        Target(
            name: "Framework_a_watchos",
            platform: .watchOS,
            product: .framework,
            productName: "FrameworkA",
            bundleId: "io.tuist.framework.a"
        ),
        // In Xcode 14, watch application can now leverage the `.app` product type
        // rather than the previous `.watch2App` type
        Target(
            name: "WatchApp",
            platform: .watchOS,
            product: .app,
            bundleId: "io.tuist.App.watchkitapp",
            infoPlist: nil,
            sources: "../WatchApp/Sources/**",
            resources: "../WatchApp/Resources/**",
            dependencies: [
                .target(name: "Framework_a_watchos"),
            ],
            settings: .settings(
                base: [
                    "GENERATE_INFOPLIST_FILE": true,
                    "CURRENT_PROJECT_VERSION": "1.0",
                    "MARKETING_VERSION": "1.0",
                    "INFOPLIST_KEY_UISupportedInterfaceOrientations": [
                        "UIInterfaceOrientationPortrait",
                        "UIInterfaceOrientationPortraitUpsideDown",
                    ],
                    "INFOPLIST_KEY_WKCompanionAppBundleIdentifier": "io.tuist.App",
                    "INFOPLIST_KEY_WKRunsIndependentlyOfCompanionApp": false,
                ]
            )
        )
    ]
)
