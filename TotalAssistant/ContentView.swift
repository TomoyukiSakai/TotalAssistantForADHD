//
//  ContentView.swift
//  TotalAssistant
//
//  Created by Tomoyuki SAKAI on 2023/12/05.
//
//Infinity指定でサイズが等分になったり、自動で必要なスペースをとってくれる
//Erroerとして、ここでForEechを使うと自己参照となりエラーになる。



import SwiftUI



struct ContentView: View {
    
    
         
        
    var body: some View {
        NavigationView(){
            VStack(spacing:0){
                HStack{
                    
                    Text("ホーム")
                        .font(.title)
                        .padding()
                    Spacer()
                    
                    
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
                     
                    
                        /*
                        .navigationBarTitle("ホーム",displayMode: .inline)
                        */
                     
                    
                    Image("brain")
                        .resizable()
                        .frame(width:200,height:200)
                        .padding()
                    

                    /*
                    必要ならつける（上部にくっつける）
                    Spacer()
                    */
                    
                }
                .frame(maxWidth: .infinity)
                .frame(maxHeight: .infinity)
                .background(Color.yellow)
                
                
                    FooterView()
                
                }
            
            }
            .navigationBarBackButtonHidden()
            .edgesIgnoringSafeArea(.bottom)
           
           
        
    }
}


#Preview {
    ContentView()
}
