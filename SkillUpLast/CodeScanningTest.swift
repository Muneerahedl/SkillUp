//
//  CodeScanningTest.swift
//  SkillUpp
//
//  Created by Maha Alassaf on 20/05/1444 AH.
//

import SwiftUI
import CodeScanner

struct CodeScanningTest: View {
    @State var isPresentingScanner = false
    @State var scannedCode: String = "Please press To Scan"
    
    var cannerSheert : some View{
        CodeScannerView(
            codeTypes: [.qr],
            simulatedData: "Paul Hudson") { response in
            switch response {
            case .success(let result):
                print("Found code: \(result.string)")
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    var body: some View {
        
        VStack(spacing: 10){
            Text(scannedCode).bold()
            
            Button("Scane Qr"){
                self.isPresentingScanner = true
                
               
            }.foregroundColor(Color.blue)
            .sheet(isPresented: $isPresentingScanner){
                self.cannerSheert
            }
            
        }
    }
}

struct CodeScanningTest_Previews: PreviewProvider {
    static var previews: some View {
        CodeScanningTest()
    }
}
