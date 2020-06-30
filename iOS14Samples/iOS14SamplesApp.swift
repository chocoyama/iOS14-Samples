//
//  iOS14SamplesApp.swift
//  iOS14Samples
//
//  Created by Takuya Yokoyama on 2020/06/23.
//

import SwiftUI

@main
struct iOS14SamplesApp: App {
    @UIApplicationDelegateAdaptor<AppDelegate> private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("didFinishLaunchingWithOptions")
        return true
    }
}

