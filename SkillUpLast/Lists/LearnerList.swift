//
//  LearnerList.swift
//  Skillup-muneerah
//
//  Created by Muneerah Aledaily on 19/12/2022.
//

import Foundation
import CloudKit

struct LearnerList {
    var recordId: CKRecord.ID?
    let FirstName: String
    let LastName: String
    let Bio: String
    let Location: String
    let Occupation: String
    
    init(recordId: CKRecord.ID? = nil, FirstName: String, LastName: String, Bio: String, Location: String, Occupation: String) {
        self.FirstName = FirstName
        self.LastName = LastName
        self.Bio = Bio
        self.Location = Location
        self.Occupation = Occupation
    }
    
    func toDictionary() -> [String: Any] {
        return ["FirstName": FirstName, "LastName": LastName, "Bio": Bio, "Location": Location, "Occupation": Occupation]
        
    }
    
}


