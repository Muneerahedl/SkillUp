//
//  NewServiceViewModel.swift
//  Skillup-muneerah
//
//  Created by Muneerah Aledaily on 19/12/2022.
//

import Foundation
import CloudKit

enum RecordType2: String {
    case TrainerList = "TrainerList"
    
}

class NewServiceViewViewModel: ObservableObject {
    private var database2: CKDatabase
    private var container: CKContainer
    
    init(container: CKContainer) {
        self.container = container
        self.database2 = self.container.publicCloudDatabase
    }
    
    func saveItem2(TFirstName: String, TLastName: String, TBio: String, TLocation: String){
        let record2 = CKRecord(recordType: RecordType2.TrainerList.rawValue)
        let TrainerList = TrainerList(TFirstName: TFirstName, TLastName: TLastName, TBio: TBio, TLocation: TLocation)
        record2.setValuesForKeys(TrainerList.toDictionary2())
        
        //saving record in database
        self.database2.save(record2) { newRecord, error in
            if let error = error {
                print(error)
            } else {
                if let _ = newRecord {
                    print("SAVED")
                }
            }
            
        }
    }
}

//NewServiceViewModel

