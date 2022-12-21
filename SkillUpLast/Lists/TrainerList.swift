//
//  TrainerList.swift
//  Skillup-muneerah
//
//  Created by Muneerah Aledaily on 20/12/2022.
//

import Foundation
import CloudKit


struct TrainerList {
    var recordId2: CKRecord.ID?
    let TFirstName: String
    let TLastName: String
    let TBio: String
    let TLocation: String
    
    
    init(recordId2: CKRecord.ID? = nil, TFirstName: String, TLastName: String, TBio: String, TLocation: String) {
        self.TFirstName = TFirstName
        self.TLastName = TLastName
        self.TBio = TBio
        self.TLocation = TLocation
       
    }
    
    func toDictionary2() -> [String: Any] {
        return ["TFirstName": TFirstName, "TLastName": TLastName, "TBio": TBio, "TLocation": TLocation]
        
    }
    
}
