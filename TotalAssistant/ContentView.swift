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
            Text("ポモドーロタイマー")
                .font(.largeTitle)
                /*位置変えない*/
                .padding()
                .foregroundColor(.white)
                
            Text("<解説>")
                .foregroundColor(.white)
            Text("20分の集中と5分の休憩で、\n集中力を維持します")
                
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
            Text(minutesStr + ":" + secondsStr)
                /*なぜかframeを冒頭にしないといけない*/
                .frame(maxWidth: .infinity)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.black)
                .background(Color.white)
             
                .padding()
            
            Text("現在のセット数　\(timerClass.nowSet)")
                
                .foregroundColor(.white)
            Image("tomato")
                .resizable()
                .frame(width:200,height:200)
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
                .background(Color.white)
                .padding()
                .foregroundColor(.black)
                Button(action:{
                    isStopped = true
                    timerClass.StopTimer(stoppedTimer:true)
                    isDisabled = false
                }){
                    Text("一時停止")
                }
                .disabled(isStopped)
                .padding()
                .background(Color.white)
                .padding()
                .foregroundColor(.black)
                
            }
            
            /*
            HStack{
                Button(action:{
                    
                }){
                    Text("TOP")
                }
                Button(action:{
                    
                }){
                    Text("タイマー")
                }
            }
             */
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .background(Color.black)
        
    
    }
}

#Preview {
    ContentView()
}
