//
//  FullScreenView.swift
//  iOS14Samples
//
//  Created by Takuya Yokoyama on 2020/06/23.
//

import SwiftUI

struct PresentFullScreenView: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show") {
            self.showingSheet = true
        }.fullScreenCover(isPresented: $showingSheet) {
            Text("Sheet")
        }
    }
}

struct FullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        PresentFullScreenView()
    }
}
