//
//  ProgressSampleView.swift
//  iOS14Samples
//
//  Created by Takuya Yokoyama on 2020/06/23.
//

import SwiftUI

struct ProgressSampleView: View {
    var body: some View {
        VStack(spacing: 64) {
            ProgressView("Circular")
            ProgressView("Linear", value: 0.5, total: 1.0)
            Link("link", destination: URL(string: "https://www.yahoo.co.jp")!)
            Label("Lightning", systemImage: "bolt.fill")
                .labelStyle(TitleOnlyLabelStyle())
            Label("Lightning", systemImage: "bolt.fill")
                .labelStyle(IconOnlyLabelStyle())
        }
    }
}

struct ProgressSampleView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressSampleView()
    }
}
