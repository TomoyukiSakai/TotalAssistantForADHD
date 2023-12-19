//
//  ContentView.swift
//  TotalAssistant
//
//  Created by Tomoyuki SAKAI on 2023/12/05.
//
//Infinity指定でサイズが等分になったり、自動で必要なスペースをとってくれる



import SwiftUI


struct ContentView: View {
    @ObservedObject var timerClass = TimerClass()
    
    //＠Stateをつけているので構造体の中でも数値を変換できる
    @State var isMoving = false
    
    var body: some View {
        VStack(spacing:0){
            HStack{
                Text("ポモドーロタイマー")
                    .font(.title)
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .background(Color.green)
            
            
            VStack{
                Text("<解説>\nポモドーロタイマーは２５分の集中タイムと５分の休憩のセットからなる集中力UPのメソッドです。")
                    .frame(maxWidth:300)
                let minutesStr = String(timerClass.nowMinutes)
                let secondsStr =
                String(timerClass.nowSeconds)
                
                /*
                 .frame(maxWidth: .infinity)
                 .background(Color.red)
                 
                 
                 
                 /*位置変えない*/
                 .background(Color.white)
                 .padding()
                 .foregroundColor(.black)
                 */
                
                
                
                Text(minutesStr + ":" + secondsStr)
                /*なぜかframeを冒頭にしないといけない*/
                    .frame(maxWidth: .infinity)
                    .font(.largeTitle)
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.white)
                    .padding()
                    
                
                Text("現在のセット数　\(timerClass.nowSet)")
                
                    .foregroundColor(.black)
                Image("tomato")
                    .resizable()
                    .frame(width:200,height:200)
                    .padding()
                
                HStack {
                    
                    Button(action:{
                        timerClass.ProcessTimer(stopped: false)
                        isMoving = true
                    }){
                        Text("スタート")
                        
                    }
                    .disabled(isMoving)
                    .padding()
                    .background(isMoving ? Color.gray : Color.pink)
                    .padding()
                    .foregroundColor(isMoving ? Color.black : Color.white)
                    
                    Button(action:{
                        timerClass.StopTimer(stoppedTimer:true)
                        isMoving = false
                    }){
                        Text("一時停止")
                    }
                    .disabled(!isMoving)
                    .padding()
                    .background(isMoving ? Color.blue : Color.gray)
                    .padding()
                    .foregroundColor(.white)
                    
                }
            
                
                
            }
            .frame(maxWidth: .infinity)
            .frame(maxHeight: .infinity)
            .background(Color.yellow)
            
            
            HStack{
                
                Button(action:{
                    
                }){
                    Text("トップ")
                        .padding()
                        .frame(maxWidth:.infinity)
                        .frame(minHeight:80)
                }
                Button(action:{
                    
                }){
                    Text("集中系")
                        .padding()
                        .frame(maxWidth:.infinity)
                }
                Button(action:{
                    
                }){
                    Text("計画系")
                        .padding()
                        .frame(maxWidth:.infinity)
                }
                Button(action:{
                    
                }){
                    Text("設定")
                        .padding()
                        .frame(maxWidth:.infinity)
                }
               
                
            }
            .background(.black)
            .foregroundColor(.white)
            .font(.footnote)
            
            
        }.edgesIgnoringSafeArea(.bottom)
        
    }
}


#Preview {
    ContentView()
}
