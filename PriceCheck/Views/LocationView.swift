//
//  LocationView.swift
//  PriceCheck
//
//  Created by ariel on 9/26/24.
//

import Foundation
import SwiftUI

struct LocationView: View {
    var location: Location
    
    var body: some View {
        Section(header: Text(location.name).font(.headline).background(Color.gray)) {
            ForEach(location.scans.sorted(by: { $0 < $1 })) { scan in
                ScanView(scan: scan)
            }
        }
    }
}
