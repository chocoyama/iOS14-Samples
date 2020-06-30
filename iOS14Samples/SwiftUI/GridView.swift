//
//  GridView.swift
//  iOS14Samples
//
//  Created by Takuya Yokoyama on 2020/06/23.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        ScrollView {
            ScrollView(.horizontal) {
                LazyHGrid(
                    rows: [
                        GridItem(.fixed(50))
                    ],
                    alignment: .center,
                    spacing: nil,
                    pinnedViews: []
                ) {
                    ForEach(0..<100, id: \.self) { _ in
                        Rectangle()
                            .fill(Color.red)
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
            LazyVGrid(
                columns: [
                    GridItem(.adaptive(minimum: .infinity, maximum: .infinity), spacing: nil, alignment: nil),
                    GridItem(.adaptive(minimum: .infinity, maximum: .infinity), spacing: nil, alignment: nil),
                ],
                alignment: .center,
                spacing: nil,
                pinnedViews: []
            ) {
                ForEach(0..<100, id: \.self) { _ in
                    Rectangle()
                        .fill(Color.red)
                        .aspectRatio(contentMode: .fit)
                }
            }
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
