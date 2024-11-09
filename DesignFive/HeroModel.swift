import Foundation

enum PoderesSuperheroes: String, Codable {
    case telepatia = "Telepatía"
    case vuelo = "Vuelo"
    case superFuerza = "Super Fuerza"
    case invisibilidad = "Invisibilidad"
    case teletransportacion = "Teletransportación"
    case manipulacionDelTiempo = "Manipulación del Tiempo"
    case controlElemental = "Control Elemental"
    case duplicacion = "Duplicación"
    case imitacionDeSonido = "Imitación de Sonido"
    case amplificacionDelSonido = "Amplificación del Sonido"
    case generacionDeVibraciones = "Generación de Vibraciones"
    case controlDeVibraciones = "Control de Vibraciones"
    case manipulacionDeLaLuz = "Manipulación de la Luz"
    case emisionDeLuz = "Emisión de Luz"
    case giroRapido = "Giro Rápido"
    case creacionDeTornados = "Creación de Tornados"
    case manipulacionDeLaTierra = "Manipulación de la Tierra"
    case creacionDeRocas = "Creación de Rocas"
    case manipulacionDelClima = "Manipulación del Clima"
    case manipulacionMental = "Manipulación Mental"
    case invulnerabilidad = "Invulnerabilidad"
    case pielMetalica = "Piel Metálica"
    case manipulacionDelAgua = "Manipulación del agua"
    case comunicacionConVidaMarina = "Comunicación con vida marina"
    case transformacionEnFormaAcuatica = "Transformación en forma acuática"
    case manipulacionDeSombras = "Manipulación de sombras"
    case teletransportacionATravesDeSombras = "Teletransportación a través de sombras"
    case regeneracion = "Regeneración"
    case manipulacionDelFuego = "Manipulación del fuego"
}

struct Hero: Codable, Identifiable, Hashable {
    let id: String
    let nombreReal: String
    let apodo: String
    let descripcion: String?
    let edad: Int
    let poderes: [PoderesSuperheroes]
    let imagen: String
    let historia: String?
}

func getSuperHeroes() -> [Hero] {
    guard let url = Bundle.main.url(forResource: "SuperHeroes", withExtension: "json") else { return [] }
    
    do {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([Hero].self, from: data).sorted(by: { $0.apodo < $1.apodo })
    } catch {
        print(error)
        return []
    }
}
