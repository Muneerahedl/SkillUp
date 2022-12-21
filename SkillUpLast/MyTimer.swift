//
//  ContentView.swift
//  timerr
//
//  Created by noura on 18/05/1444 AH.
//
import SwiftUI
import PassKit
import iPaymentButton

struct MyTimer: View {
    @State private var timeRemaining = 120
    @Environment(\.scenePhase) var scenePhase
    @State private var isActive = true
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View{
        
            ZStack{

                Text("Booking Status")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color(red: 0.375, green: 0.336, blue: 0.722))
                    .padding(.top, -210.0)
            }
  
     Text("Please wait for trainer approval")
            .bold()
            .foregroundColor(Color(red: 0.375, green: 0.336, blue: 0.722))
            .font(.title2)
        
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 300 , height: 250)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.961))
                
                Text("Time: \(timeRemaining) sec")
                    .font(.largeTitle)
                    .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))
                    .padding(.horizontal, 20)
                    .padding(.vertical, 2)
                    .bold()
            }
    
        .onChange(of: scenePhase) { newPhase in
            if newPhase == .active {
                isActive = true
            } else {
                isActive = false
            }
        }
        .onReceive(timer) { time in
            if timeRemaining > 0 {
                timeRemaining -= 1
            }
        }
        
      
     //   QRGeneratorView()
        
    }//end body
    
    
    func timer2(){
    DispatchQueue.main.asyncAfter(deadline: .now()+120){

//code
        
    }
    }
    
    
}

struct MyTimer_Previews: PreviewProvider {
    static var previews: some View {
        MyTimer()
    }
}
