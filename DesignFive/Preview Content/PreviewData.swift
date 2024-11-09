import Foundation

extension Hero {
    static let preview = Hero(
        id: UUID().uuidString,
        nombreReal: "Laura Blanco",
        apodo: "Ala de Águila",
        descripcion:
            "Laura siempre soñó con volar. Un encuentro con un águila mística le otorgó el don del vuelo.",
        edad: 28,
        poderes: [.vuelo],
        imagen: "alaDeAguila",
        historia: nil)
}
