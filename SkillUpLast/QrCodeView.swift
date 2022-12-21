//
//  QrCodeView.swift
//  SkillUpp
//
//  Created by Maha Alassaf on 16/05/1444 AH.
//

import SwiftUI
import CoreImage.CIFilterBuiltins
 
struct QrCodeView: View {
    let filter = CIFilter.qrCodeGenerator()
    let contex = CIContext()
    var url: String
    
    var body: some View {
        Image(uiImage: generatQrImage(url))
            .interpolation(.none)
            .resizable()
            .frame(width: 80 ,height: 80)
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


