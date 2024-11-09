//
//  ContentView.swift
//  DesignFive
//
//  Created by Cristian Jose Perez Guerra on 8/11/24.
//

import SwiftUI

struct SuperHeroes: View {
    
    let heroes = getSuperHeroes()
    let flexibleItems: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: flexibleItems) {
                    ForEach(heroes) { hero in
                        NavigationLink(value: hero) {
                            HeroItemCard(hero: hero)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
            .safeAreaPadding()
            .navigationTitle("Súper Héroes")
            .navigationDestination(for: Hero.self) { hero in
                HeroDetail(heroe: hero)
            }
        }
        
    }
}

#Preview {
    SuperHeroes()
}
