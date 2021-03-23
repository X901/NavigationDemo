//
//  Page2View.swift
//  NavigationDemo
//
//  Created by Basel Baragabah on 23/03/2021.
//

import SwiftUI

struct Page2View: View {
    @Binding var nav : Bool

    var body: some View {
        Button("Navigate to Root") {
            nav = false
            
        }
    }
}

struct Page2View_Previews: PreviewProvider {
    static var previews: some View {
        Page2View(nav: .constant(false))
    }
}
