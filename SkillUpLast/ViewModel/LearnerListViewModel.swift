//
//  LearnerListViewModel.swift
//  Skillup-muneerah
//
//  Created by Muneerah Aledaily on 19/12/2022.
//

import Foundation
import CloudKit

//database creation
enum RecordType: String {
    case LearnerList = "LearnerList"
    
}

//enum RecordType2: String {
//    case TrainerList = "TrainerList"
//    
//}
class LearnerListViewModel: ObservableObject {
    private var database: CKDatabase
    private var container: CKContainer
    
    init(container: CKContainer) {
        self.container = container
        self.database = self.container.publicCloudDatabase
    }
    
    //recordtype creation
    func saveItem(FirstName: String, LastName: String, Bio: String, Location: String, Occupation: String){
        let record = CKRecord(recordType: RecordType.LearnerList.rawValue)
        let LearnerList = LearnerList(FirstName: FirstName, LastName: LastName, Bio: Bio, Location: Location, Occupation: Occupation)
        record.setValuesForKeys(LearnerList.toDictionary())
        
        //saving record in database
        self.database.save(record) { newRecord, error in
            if let error = error {
                print(error)
            } else {
                if let _ = newRecord {
                    print("SAVED")
                }
            }
            
        }
    } //savedata
    
    
}
