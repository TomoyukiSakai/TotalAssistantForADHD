//
//  ContentView.swift
//  TotalAssistant
//
//  Created by Tomoyuki SAKAI on 2023/12/05.
//
//Infinity指定でサイズが等分になったり、自動で必要なスペースをとってくれる



import SwiftUI


struct ContentView: View {
    @State var menuContents = ["トップ","集中系","計画系","設定"]
    
    var body: some View {
        VStack(spacing:0){
            HStack{
                Text("ホーム")
                    .font(.title)
                
            }
            .frame(maxWidth: .infinity)
            .frame(height:100)
            .background(Color.green)
            .multilineTextAlignment(.center)
            .font(.title)
            
            VStack{
                Text("マインドヘルパーへようこそ\nマインドヘルパーはADHDHを抱える方に寄り添うツールアプリです。\n下記のメニューより、複数のツールを利用することができます。")
                    .frame(maxWidth:300)
                    .padding()
                
                Image("brain")
                    .resizable()
                    .frame(width:200,height:200)
                    .padding()
    
                /*
                必要ならつける（上部にくっつける）
                Spacer()
                */
                
                HStack(){
                    
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
