//
//  ContentView.swift
//  TotalAssistant
//
//  Created by Tomoyuki SAKAI on 2023/12/05.
//

import SwiftUI


struct ContentView: View {
    @ObservedObject var timerClass = TimerClass()
    
    //＠Stateをつけているので構造体の中でも数値を変換できる
    @State var isDisabled = false
    @State var isStopped = false
    
    var body: some View {
        VStack {
            let minutesStr = String(timerClass.nowMinutes)
            let secondsStr =
                String(timerClass.nowSeconds)
            Text(minutesStr + ":" + secondsStr)
                .font(.largeTitle)
                .padding()
            Text("現在のセット数　\(timerClass.nowSet)")
                .padding()
            Image("tomato")
                .resizable()
                .frame(width:300,height:300)
                .padding()
            
            HStack {
                Button(action:{
                    isDisabled = true
                    timerClass.ProcessTimer(stopped: false)
                    isStopped = false
                }){
                    Text("スタート")
                   
                }
                .disabled(isDisabled)
                .padding()
                
                Button(action:{
                    isStopped = true
                    timerClass.StopTimer(stoppedTimer:true)
                    isDisabled = false
                }){
                    Text("一時停止")
                }
                .disabled(isStopped)
                
                
            }
        }
        .padding()
        
    
    }
}

#Preview {
    ContentView()
}
