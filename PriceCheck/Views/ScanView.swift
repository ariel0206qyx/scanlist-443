//
//  ScanView.swift
//  PriceCheck
//
//  Created by ariel on 9/26/24.
//

import Foundation
import SwiftUI

struct ScanView: View {
    var scan: PriceScan
    
    var body: some View {
        NavigationLink(destination: ScanDetailView(scan: scan)) {
            HStack {
                Text(scan.item)
                    .font(.body)
                Spacer()
                Text(String(format: "$%.2f", scan.price))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
            }
            .padding(.vertical, 5)
        }
    }
}
