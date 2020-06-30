//
//  LabelView.swift
//  iOS14Samples
//
//  Created by Takuya Yokoyama on 2020/06/30.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        List {            
            Label("Lightning", systemImage: "bolt.fill")
            Label("Lightning", systemImage: "bolt.fill")
                .labelStyle(TitleOnlyLabelStyle())
            Label("Lightning", systemImage: "bolt.fill")
                .labelStyle(IconOnlyLabelStyle())
        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}
