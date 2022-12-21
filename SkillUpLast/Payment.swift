//

//
//  Payment.swift
//  SkiilUp
//
//  Created by Maha Alassaf on 25/05/1444 AH.
//

import SwiftUI
import PassKit
import iPaymentButton

struct Payment: View {
    var body: some View {
        VStack{
                
                Text("Booking").bold()
                //                .padding(.bottom , 500)
                    .padding(.trailing , 300)
                
                Divider()
                
                Image("Yoga").resizable().frame(width: 250, height: 250)
                
                VStack{
                    Text("Time:").bold()
                    Text("Place:").bold()
                    Text("Number of learners: ").bold()
                }
                
                Divider()
                Text("Reservation fee:                                              220")
//                Text("Totel before vax:                                          \(count * 100) ")
                Text("Tax:                                                                      30")
                Text("Total:                                                                 250")
                
                
                VStack{
                    iPaymentButton{
                        iPaymentButton.applePayDemo()
                    }.padding(.bottom,50)
                        .presentationDetents([ .large, .fraction(0.75)])
                        .frame(width: 350,height: 15 ,alignment: .leading)
                }.padding(.top ,100)
                
            }.navigationTitle("Payment")
    }
}

struct Payment_Previews: PreviewProvider {
    static var previews: some View {
        Payment()
    }
}


