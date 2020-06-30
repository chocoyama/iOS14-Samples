//
//  ContentView.swift
//  iOS14Samples
//
//  Created by Takuya Yokoyama on 2020/06/23.
//

import SwiftUI

struct ContentView: View {
    struct Feature {
        enum SwiftUI: String, CaseIterable, Identifiable {
            case gridView = "GridView"
            
            var title: String { rawValue }
            var id: String { rawValue }
            var destination: some View {
                Group {
                    switch self {
                    case .gridView: GridView()
                    }
                }.navigationTitle(title)
            }
        }
        
        enum UIKit: String, CaseIterable, Identifiable {
            case collectionListView = "ColelctionListView"
            
            var title: String { rawValue }
            var id: String { rawValue }
            var destination: some View {
                Group {
                    switch self {
                    case .collectionListView: CollectionListView()
                    }
                }.navigationTitle(title)
            }
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                DisclosureGroup("SwiftUI") {
                    List(Feature.SwiftUI.allCases) { feature in
                        NavigationLink(destination: feature.destination,
                                       label: { Text(feature.title) })
                    }
                }
                
                DisclosureGroup("UIKit") {
                    List(Feature.UIKit.allCases) { feature in
                        NavigationLink(destination: feature.destination,
                                       label: { Text(feature.title) })
                    }
                }
            }.navigationTitle("iOS14 Samples")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
