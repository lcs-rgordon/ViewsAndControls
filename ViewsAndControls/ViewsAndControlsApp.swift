//
//  ViewsAndControlsApp.swift
//  ViewsAndControls
//
//  Created by Russell Gordon on 2021-11-23.
//

import SwiftUI

@main
struct ViewsAndControlsApp: App {
    var body: some Scene {
        WindowGroup {
            ControlsListView()
                .onAppear {
                    UserDefaults.standard.set(false, forKey: "_UIConstraintBasedLayoutLogUnsatisfiable")
                }
        }
    }
}
