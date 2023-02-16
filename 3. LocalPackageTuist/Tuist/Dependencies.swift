//
//  Dependencies.swift
//  Config
//
//  Created by sejin on 2022/10/02.
//

import ProjectDescription
import ProjectDescriptionHelpers

let spm = SwiftPackageManagerDependencies(
    [
    .local(path: "Core/Core"),
    .local(path: "Shared/FoundationUtil"),
    ]
)

let dependencies = Dependencies(
    carthage: [],
    swiftPackageManager: spm,
    platforms: [.iOS, .watchOS]
)
