//
//  Page1View.swift
//  NavigationDemo
//
//  Created by Basel Baragabah on 23/03/2021.
//

import SwiftUI

struct Page1View: View {
    @Binding var nav : Bool
    @State private var birthDate = Date()

    var body: some View {
        
        Form {
            Section(header:Text("select date")) {
                DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: [.date,.hourAndMinute]) {
                    Text("Select a date")

            }
                
                Section() {
                    NavigationLink(destination: Page2View(nav: $nav),
                                   label: { Text("Go To view 3")})
                        
                        .isDetailLink(false)

                    
                }
        }
        }
    }
    
}

struct Page1View_Previews: PreviewProvider {
    static var previews: some View {
        Page1View(nav: .constant(false))
    }
}
