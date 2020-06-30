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
            case gridView
            case textEditView
            case progressView
            case link
            case label
            
            var title: String { .upperCamel(fromLowerCamel: rawValue) }
            var id: String { rawValue }
            var destination: some View {
                Group {
                    switch self {
                    case .gridView: GridView()
                    case .textEditView: TextEditView()
                    case .progressView: ProgressSampleView()
                    case .link: LinkView()
                    case .label: LabelView()
                    }
                }.navigationTitle(title)
            }
        }
        
        enum UIKit: String, CaseIterable, Identifiable {
            case collectionListView
            
            var title: String { .upperCamel(fromLowerCamel: rawValue) }
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
                    ForEach(Feature.SwiftUI.allCases) { feature in
                        NavigationLink(destination: feature.destination,
                                       label: { Text(feature.title) })
                    }
                }
                
                DisclosureGroup("UIKit") {
                    ForEach(Feature.UIKit.allCases) { feature in
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

private extension String {
    static func upperCamel(fromLowerCamel lowerCamel: String) -> String {
        var rawStr = lowerCamel
        let firstStr = rawStr.removeFirst()
        return "\(firstStr.uppercased())\(rawStr)"
    }
}
