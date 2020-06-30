//
//  PickerSampleView.swift
//  iOS14Samples
//
//  Created by Takuya Yokoyama on 2020/06/26.
//

import SwiftUI

struct PickerSampleView: View {
    @State private var pickedColor: Color = .black
    
    var body: some View {
        ColorPicker("ColorPicker", selection: $pickedColor)
            .frame(width: 100, height: 100, alignment: .center)
    }
}

struct PickerSampleView_Previews: PreviewProvider {
    static var previews: some View {
        PickerSampleView()
    }
}
