//
//  CharProgressBar.swift
//  LockInStats
//
//  Created by Danielle Abrams on 10/10/24.
//

import SwiftUI

struct CharProgressBar: View {
    @State public var barwidth: CGFloat = 200
    @State public var barheight: CGFloat = 20
    @State public var percent: CGFloat = 50
    
    var body: some View {
       let multiplier = barwidth / 100
        
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: barheight, style: .continuous)
                .frame(width: barwidth, height: barheight)
                .foregroundStyle(.chartGray)
            
            RoundedRectangle(cornerRadius: barheight, style: .continuous)
                .frame(width: percent * multiplier, height: barheight)
                .background(LinearGradient(gradient: Gradient(colors:[.accent, .accent]), startPoint: .leading, endPoint: .trailing).clipShape(RoundedRectangle(cornerRadius: barheight, style: .continuous))
                )
              
        }
        .foregroundStyle(.accent)
    }
}

#Preview {
    CharProgressBar()
}
