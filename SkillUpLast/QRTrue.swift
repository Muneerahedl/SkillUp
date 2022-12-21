//
//  QRTrue.swift
//  timerr
//
//  Created by noura on 23/05/1444 AH.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

struct QRTrue: View {
    let filter = CIFilter.qrCodeGenerator()
    let contex = CIContext()
    var url : String
    
    var body: some View {
        
        Text("Yay!")
            .font(.system(size: 44, weight: .bold, design: .default))
            .foregroundColor(Color(red: 0.289, green: 0.667, blue: 0.489))
        Text("Your request was approved")
            .font(.system(size: 16, weight: .bold, design: .default))
            .foregroundColor(Color(red: 0.375, green: 0.336, blue: 0.722))
        
        Text("Use the QR code below when you meet your trainer to confirm that you have met")
            .font(.system(size: 12, weight: .medium, design: .default))
        
        Image(uiImage: generatQrImage(url))
            .interpolation(.none)
            .resizable()
            .frame(width: 200 , height: 200)
    }
    
    func generatQrImage(_ url : String)  -> UIImage{
        let data = Data(url.utf8)
        filter.setValue(data, forKey: "inputMessage")
        
        if let qrCodeImage =  filter.outputImage{
            if let qrCodeCGImage =   contex.createCGImage(qrCodeImage, from: qrCodeImage.extent ){
                return UIImage(cgImage: qrCodeCGImage)
            }
        }
        
        return UIImage(systemName: "xmark") ?? UIImage()
    }
    
    
}
    
    
    struct QRTrue_Previews: PreviewProvider {
        static var previews: some View {
            
            QRTrue(url: "")
        }
    }

