import ProjectDescription
import ProjectDescriptionHelpers

/*
                +-------------+
                |             |
                |     App     | Contains 3LocalPackageTuist App target and 3LocalPackageTuist unit-test target
                |             |
         +------+-------------+-------+
         |         depends on         |
         |                            |
 +----v-----+                   +-----v-----+
 |          |                   |           |
 |   Kit    |                   |     UI    |   Two independent frameworks to share code and start modularising your app
 |          |                   |           |
 +----------+                   +-----------+

 */

// MARK: - Project

// Creates our project using a helper function defined in ProjectDescriptionHelpers
let project = Project.app(name: "LocalPackageTuist",
                          platform: .iOS,
                          additionalTargets: ["LocalPackageTuistKit", "LocalPackageTuistUI"])
