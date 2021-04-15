//
//  FirebaseDemoApp.swift
//  FirebaseDemo
//
//  Created by Fred Javalera on 4/14/21.
//

import SwiftUI
import Firebase

@main
struct FirebaseDemoApp: App {
  
  init() {
    FirebaseApp.configure()
    
    MakeReservation()
  }
  
  func MakeReservation() {
    
    // Declare reference to the cloud Firestore DB
    let db = Firestore.firestore()
    
    // Reference to the reservations collection. Will be created if it doesn't already exist
    let reservations = db.collection("reservations")
    
    // Option 1: Create a document with a given identifier (i.e. ID)
    reservations.document("test123")
      .setData(["name": "Carol", "people": 22])
    
    // Option 2: Create a document with a unique identifier (i.e. auto-generated ID)
    reservations.document()
      .setData(["name": "Tom"])
    
    // Option 3: Create a document with given data
    let document = reservations.addDocument(data: ["name": "Sue", "people": 10])
    
    // TODO: Work with the document
    //document.
  }
  
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}
