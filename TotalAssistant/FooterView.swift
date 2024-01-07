//
//  FooterView.swift
//  TotalAssistant
//
//  Created by Tomoyuki SAKAI on 2024/01/08.
//

import SwiftUI
struct Item{
    let displayText: String
    let destinationView: AnyView
}

struct FooterView: View {
    let items = [
        Item(displayText:"トップ", destinationView:AnyView(ContentView())),
        Item(displayText:"集中系", destinationView:AnyView(Concentrate())),
        Item(displayText:"計画系", destinationView:AnyView(Plan())),
        Item(displayText:"設定", destinationView:AnyView(Setting()))
    ]
    
     var body: some View{
         GeometryReader{geometry in
             HStack(spacing:0) {
                 ForEach(items, id: \.displayText){item in
                     NavigationLink(destination: item.destinationView){
                         Text(item.displayText).frame(maxHeight:80)
                             .frame(width:geometry.size.width/CGFloat(items.count))
                             .background(.black)
                             .foregroundColor(.white)
                             .font(.footnote)
                     }
                 }
             }
         }
         .frame(maxHeight:50)
     }
}

#Preview {
    FooterView()
}
