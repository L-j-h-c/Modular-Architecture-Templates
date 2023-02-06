//
//  MultiWidgetBundle.swift
//  MultiWidget
//
//  Created by Junho Lee on 2023/02/06.
//

import WidgetKit
import SwiftUI

@main
struct MultiWidgetBundle: WidgetBundle {
    var body: some Widget {
        MultiWidget()
        MultiWidgetLiveActivity()
    }
}
