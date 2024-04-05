//
//  Concentrate.swift
//  TotalAssistant
//
//  Created by Tomoyuki SAKAI on 2023/12/20.
//

import SwiftUI

struct ItemConcentrate{
    let displayText: String
    let destinationView: AnyView
}

struct Concentrate: View {
    
    
    private let itemsConcentrate = [
        ItemConcentrate(displayText: "ポモドーロタイマー", destinationView:AnyView(TimerPage()))
    ]
    
    var body: some View {
        NavigationView(){
            VStack {
                List{
                    ForEach(itemsConcentrate,id:\.displayText){
                        item in
                        NavigationLink(destination:item.destinationView,label:{Text(item.displayText)}
                            
                        )
                        
                    }
                }
                .navigationBarTitle("集中ツール")
                FooterView()
            }
            
        }
        .navigationBarBackButtonHidden()
        
    }
}

#Preview {
    Concentrate()
}
