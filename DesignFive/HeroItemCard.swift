//
//  HeroItemCard.swift
//  DesignFive
//
//  Created by Cristian Jose Perez Guerra on 9/11/24.
//

import SwiftUI

struct HeroItemCard: View {
    let hero: Hero
    var body: some View {
        VStack() {
            Image(hero.imagen)
                .resizable()
                .scaledToFit()
                .overlay(alignment: .bottom) {
                    Rectangle()
                        .fill(.white.opacity(0.7))
                        .frame(height: 20)
                        .overlay(alignment: .center) {
                            Text(hero.apodo)
                                .font(.caption)
                                .bold()
                        }
                }
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .black.opacity(0.5), radius: 1, x: 0, y: 1)
        }
        .padding()
    }
}

#Preview {
    HeroItemCard(hero: .preview)
}
