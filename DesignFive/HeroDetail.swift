//
//  HeroDetail.swift
//  DesignFive
//
//  Created by Cristian Jose Perez Guerra on 9/11/24.
//

import SwiftUI

struct HeroDetail: View {
    let heroe: Hero
    var body: some View {
        VStack {
            Form {
                Section {
                    Text(heroe.apodo)
                        .font(.title)
                        .bold()
                    Image(heroe.imagen)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                    Text("Nombre real: \(heroe.nombreReal)").bold()
                    Text(getDescription()).font(
                        .system(.headline, design: .rounded, weight: .light))
                }
                Section {
                    List(heroe.poderes, id: \.self) { poder in
                        Text(poder.rawValue).font(.body)
                    }
                } header: {
                    Text("Súper poderes")
                }
            }
        }
    }

    func getDescription() -> String {
        return heroe.descripcion ?? heroe.historia
            ?? "No hay información disponible"
    }
}

#Preview {
    HeroDetail(heroe: .preview)
}
