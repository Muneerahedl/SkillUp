//
//  SkillUpLastApp.swift
//  SkillUpLast
//
//  Created by Muneerah Aledaily on 25/05/1444 AH.
//

import SwiftUI
import CloudKit

@main
struct SkillUpLastApp: App {
  //let container = CKContainer(identifier: "iCloud.twq.SkillUpLast")
   let container = CKContainer(identifier: "iCloud.SkillUpLast")
   // let container = CKContainer(identifier: "iCloud.twq.BteamSkillup")
    //twq.SkillUpLast
    
    var body: some Scene {
        WindowGroup {
            onBoarding()
        }
    }
}
