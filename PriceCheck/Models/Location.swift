// Created for PriceCheck on 10/10/20 
// Using Swift 5.0 
// Running on macOS 11.0
// Qapla'
//

import Foundation
import SwiftUI

struct Location: Identifiable, Codable, Comparable {
  
  var id = UUID()  // to conform to Identifiable protocol
  // Additional properties, etc.
    var name: String
    var scans: [PriceScan]
    
    init(name: String, scans: [PriceScan]) {
        self.name = name
        self.scans = scans
    }
  
  
  // To conform to Comparable protocol
  static func < (lhs: Location, rhs: Location) -> Bool {
      return lhs.name < rhs.name
    
  }
  
  static func == (lhs: Location, rhs: Location) -> Bool {
      return lhs.id == rhs.id
    
  }
    
    enum CodingKeys : String, CodingKey {
        case name = "location"
        case scans
    }
  
  // MARK: Example for SwiftUI
  
}
