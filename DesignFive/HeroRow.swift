//
//  HeroRow.swift
//  DesignFive
//
//  Created by Cristian Jose Perez Guerra on 9/11/24.
//

import SwiftUI

struct HeroRow: View {
    let heroe: Hero
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(heroe.apodo)
                    .font(.headline)
                Spacer()
                Image(heroe.imagen)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 75, height: 75)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            
        }
    }
}

#Preview {
    HeroRow(heroe: .preview)
}
