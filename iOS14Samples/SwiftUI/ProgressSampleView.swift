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
        }
    }
}

struct ProgressSampleView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressSampleView()
    }
}
