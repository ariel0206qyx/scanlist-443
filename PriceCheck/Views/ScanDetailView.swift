//
//  ScanDetailView.swift
//  PriceCheck
//
//  Created by ariel on 9/26/24.
//

import Foundation
import SwiftUI

struct ScanDetailView: View {
    var scan: PriceScan
    var body: some View {
        VStack{
            Text(scan.item).font(.largeTitle).foregroundColor(.blue)
            Text(String(format: "$%.2f", scan.price)).font(.title).foregroundColor(.purple)
            Text(scan.date).font(.title3)
            Spacer()
        }

     }
    
}
