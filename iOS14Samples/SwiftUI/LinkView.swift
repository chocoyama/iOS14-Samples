//
//  LinkView.swift
//  iOS14Samples
//
//  Created by Takuya Yokoyama on 2020/06/30.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        Link("link", destination: URL(string: "https://www.yahoo.co.jp")!)
    }
}

struct LinkView_Previews: PreviewProvider {
    static var previews: some View {
        LinkView()
    }
}
