//
//  timer.swift
//  TotalAssistant
//
//  Created by Tomoyuki SAKAI on 2023/12/06.
//

import SwiftUI
import AVFoundation




class TimerClass: ObservableObject{
    
   
    
    var timerMethod : Timer?
    @Published var nowSet : Int = 1
    @Published var nowMinutes : Int = 0
    @Published var nowSeconds : Int = 0
    @Published var stoppedTimer : Bool = false
    @Published var concentrateTimerEnded = false
    
    var count = 0
    var rest = false
    
    func ProcessTimer(){
            //Timerクラスのメソッドである。
            timerMethod = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true)
            {timer in
                self.count+=1
               
                //クロージャ内部では、selfがプロパティを使う上で必ず必要
                self.nowMinutes = self.count/60
                self.nowSeconds = self.count%60
                
                if self.count >= 25*1 && self.rest==false{
                    self.count = 0;
                    self.rest = true
                    self.PlaySound()
                }
                
                if self.rest == true && self.count>=5*1{
                    self.nowSet += 1
                    self.count = 0
                    self.rest = false
                    self.PlaySound()
                }
            }
        
        
        
    }
    
    func PlaySound(){
        kirakiraSound.play()
        timerClass.concentrateTimerEnded=false
    }
    
    func StopTimer(stoppedTimer: Bool)
    {
        timerMethod?.invalidate()
        timerMethod = nil
    }
    
    
}

private let kirakiraSound = try!  AVAudioPlayer(data: NSDataAsset(name: "piano")!.data)

var timerClass = TimerClass()




