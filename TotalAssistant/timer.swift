//
//  timer.swift
//  TotalAssistant
//
//  Created by Tomoyuki SAKAI on 2023/12/06.
//

import SwiftUI

var count = 0



class TimerClass: ObservableObject{
    
   
    
    var timerMethod : Timer?
    @Published var nowSet : Int = 1
    @Published var nowMinutes : Int = 0
    @Published var nowSeconds : Int = 0
    @Published var stoppedTimer : Bool = false
    
    var count = 0
    var rest = false
    
    func ProcessTimer(stopped:Bool){
            //Timerクラスのメソッドである。
            timerMethod = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true)
            {timer in
                self.count+=1
                //クロージャ内部では、selfがプロパティを使う上で必ず必要
                self.nowMinutes = self.count/60
                self.nowSeconds = self.count%60
                
                if self.count > 60*1 && {
                    self.count = 0;
                    self.rest = true
                }
                
                if(self.rest == true && self.count>60*1){
                    self.nowSet += 1
                    self.count = 0
                }
            }
        
        
        
    }
    
    func StopTimer(stoppedTimer: Bool)
    {
        timerMethod?.invalidate()
        timerMethod = nil
    }
    
    
    
}



