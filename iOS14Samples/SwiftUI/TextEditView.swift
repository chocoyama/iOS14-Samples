//
//  TextEditView.swift
//  iOS14Samples
//
//  Created by Takuya Yokoyama on 2020/06/23.
//

import SwiftUI

struct TextEditView: View {
    @State private var text: String = ""
    
    var body: some View {
        VStack {
            Text("入力してね")
            TextEditor(text: $text)
                .border(Color.black, width: 1)
                .padding(.all, 8)
        }
    }
}

struct TextEditView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditView()
    }
}
