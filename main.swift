//
//  main.swift
//  lesson 3
//
//  Created by Тимур on 14.09.2021.
//


import Foundation

// MARK: - 1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.

struct LegkovoyiAvtomobil {
    let poMestuProizvodstva: String
    let poRazmeru: String
    let poKlassu: String
    let poNaznacheniyu: String
    let poTipuKuzova: String
    let poRabochemuObymeCilindrovDvigatelia: Double
    let poChisluKoles: Int
    let poNalichiuyABS: Bool
    let poNalichiiPodushekBezopasnosti: Bool
    let gosRegZnak: String
}
let vaz2121Niva = LegkovoyiAvtomobil(poMestuProizvodstva: "Россия", poRazmeru: "средний внедорожник", poKlassu: "класс А", poNaznacheniyu: "внедорожник", poTipuKuzova: "внедорожное купе", poRabochemuObymeCilindrovDvigatelia: 1.6, poChisluKoles: 4, poNalichiuyABS: false, poNalichiiPodushekBezopasnosti: false, gosRegZnak: "О167СН59RUS")

struct SportCar {
    let motor: String
    let transmissiia: String
    let firmaProizvoditel: String
    let kollichestvoDverey: Int
    let kollichestvoSidenii: Int
}
let mitsubishi3000GT = SportCar(motor: "DOHC 24v V6", transmissiia: "6 ступенчатое МКПП", firmaProizvoditel: "Япония", kollichestvoDverey: 2, kollichestvoSidenii: 2)

struct TrunkCar {
    let PoKakoiyGruzopodyomnostiy: String
    let PoKakomuTipuKuzova: String
    let VidPerevozimogoGruza: String
    let Transmissiyi: String
    let Color: String
}
let ural43200931 = TrunkCar(PoKakoiyGruzopodyomnostiy: "свыше 5 тонн", PoKakomuTipuKuzova: "бортовой", VidPerevozimogoGruza: "грузо-пассажирский", Transmissiyi: "МКПП", Color: "зеленый")

// MARK: - 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.

struct LegkovoyiAvtomobilNovii {
    let poMestuProizvodstva: String
    let poRazmeru: String
    let poKlassu: String
    let poNaznacheniyu: String
    let poTipuKuzova: String
    let poRabochemuObymeCilindrovDvigatelia: Double
    let poChisluKoles: Int
    let poNalichiuyABS: Bool
    let poNalichiiPodushekBezopasnosti: Bool
    let gosRegZnak: String
    let markaAvto: String
    let godVipuska: String
    let obyemBagajnika: Int
    let zapushenLiDvigatel: Bool
    let otkritiLiOkna: Bool
    let zapolnenniiObyemBagajnika: Double
}
let uaz452 = LegkovoyiAvtomobilNovii(poMestuProizvodstva: "Россия", poRazmeru: "микроавтобус", poKlassu: "фургон", poNaznacheniyu: "пассажиро-грузоперевозки", poTipuKuzova: "фургон", poRabochemuObymeCilindrovDvigatelia: 2.5, poChisluKoles: 4, poNalichiuyABS: false, poNalichiiPodushekBezopasnosti: false, gosRegZnak: "н926ро43RUS", markaAvto: "УАЗ", godVipuska: "1987", obyemBagajnika: 720, zapushenLiDvigatel: false, otkritiLiOkna: false, zapolnenniiObyemBagajnika: 0.3)

struct SportCarNovii {
    let motor: String
    let transmissiia: String
    let firmaProizvoditel: String
    let kollichestvoDverey: Int
    let kollichestvoSidenii: Int
    let markaAvto: String
    let godVipuska: String
    let obyemBagajnika: Int
    let zapushenLiDvigatel: Bool
    let otkritiLiOkna: Bool
    let zapolnenniiObyemBagajnika: Double
}
let acCobraMkI = SportCarNovii(motor: "Ford Windsor V8 260 HiPo", transmissiia: "6 ступенчатое МКПП", firmaProizvoditel: "AC Cars", kollichestvoDverey: 2, kollichestvoSidenii: 2, markaAvto: "AC Cars", godVipuska: "1963", obyemBagajnika: 30, zapushenLiDvigatel: true, otkritiLiOkna: true, zapolnenniiObyemBagajnika: 0.5)

struct TrunkCarNovii {
    let PoKakoiyGruzopodyomnostiy: String
    let PoKakomuTipuKuzova: String
    let VidPerevozimogoGruza: String
    let Transmissiyi: String
    let Color: String
    let markaAvto: String
    let godVipuska: String
    let obyemBagajnika: Int
    let zapushenLiDvigatel: Bool
    let otkritiLiOkna: Bool
    let zapolnenniiObyemBagajnika: Double
}
let kamaz65802 = TrunkCarNovii(PoKakoiyGruzopodyomnostiy: "свыше 5 тонн", PoKakomuTipuKuzova: "бортовой", VidPerevozimogoGruza: "грузо-пассажирский", Transmissiyi: "МКПП", Color: "зеленый", markaAvto: "КамАЗ", godVipuska: "2004", obyemBagajnika: 2500, zapushenLiDvigatel: true, otkritiLiOkna: false, zapolnenniiObyemBagajnika: 0.08)

// MARK: - 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.

enum Dvigatel: String {
    case zapushen = "двигатель запущен"
    case zaglushen = "двигатель заглушен"
}
func SostoianieDvigately (for deystvie: Dvigatel) {
    switch deystvie{
    case .zapushen:
        print(Dvigatel.zapushen.rawValue)
    case .zaglushen:
        print(Dvigatel.zaglushen.rawValue)
        break
    }
}

enum Okna: String {
    case otkryti = "окна открыты"
    case zakryti = "окна закрыты"
}
func SostoianieOkon (for deystvie: Okna) {
    switch deystvie{
    case .otkryti:
        print(Okna.otkryti.rawValue)
    case .zakryti:
        print(Okna.zakryti.rawValue)
    }
}
enum Pogruzka: Double {
    case kuzov
    enum PogruzkaVKuzov: Double {
        case doPolna = 1
        case polovinu = 0.5
    }
    case bagajnik
    enum PogruzkaVBagajnik: Double {
        case doPolna = 1
        case polovinu = 0.5
    }
}

func SostoianiePogruzkiVKuzov (for deystvie: Pogruzka.PogruzkaVKuzov) {
    switch deystvie{
    case Pogruzka.PogruzkaVKuzov.doPolna:
        print("кузов загружен полностью")
    case Pogruzka.PogruzkaVKuzov.polovinu:
        print("кузов загружен наполовину")
    }
}
func SostoianiePogruzkiVBagajnik (for deystvie: Pogruzka.PogruzkaVBagajnik) {
    switch deystvie{
    case Pogruzka.PogruzkaVBagajnik.doPolna:
        print("багажник загружен полностью")
    case Pogruzka.PogruzkaVBagajnik.polovinu:
        print("багажник загружен наполовину")
    }
}
enum Vygruzka {
    case kuzov
    enum VygruzkaIzKuzova: Double {
        case polnostiu = 0
        case polovinu = 0.5
    }
    case bagajnik
    enum VygruzkaIzBagajnika: Double {
        case polnostiu = 0
        case polovinu = 0.5
    }
}
func SostoianieVygruzkiIzKuzova (for deystvie: Vygruzka.VygruzkaIzKuzova) {
    switch deystvie{
    case Vygruzka.VygruzkaIzKuzova.polnostiu:
        print("кузов выгружен полностью")
    case Vygruzka.VygruzkaIzKuzova.polovinu:
        print("кузов выгружен наполовину")
    }
}
func SostoianieVygruzkiIzBagajnika (for deystvie: Vygruzka.VygruzkaIzBagajnika) {
    switch deystvie{
    case Vygruzka.VygruzkaIzBagajnika.polnostiu:
        print("багажник выгружен полностью")
    case Vygruzka.VygruzkaIzBagajnika.polovinu:
        print("багажник выгружен наполовину")
    }
}
// MARK: - 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.

struct Gazel {
    let dvigatel: Dvigatel
    let okna: Okna
    let pogruzka: Pogruzka.PogruzkaVKuzov
}

// MARK: - 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

let gazel1 = Gazel(dvigatel: Dvigatel.zapushen, okna: Okna.zakryti, pogruzka: Pogruzka.PogruzkaVKuzov.doPolna)

let gazel2 = Gazel(dvigatel: Dvigatel.zaglushen, okna: Okna.otkryti, pogruzka: Pogruzka.PogruzkaVKuzov.polovinu)

let gazel3 = Gazel(dvigatel: Dvigatel.zaglushen, okna: Okna.zakryti, pogruzka: Pogruzka.PogruzkaVKuzov.doPolna)

let gazel4 = Gazel(dvigatel: .zapushen, okna: .zakryti, pogruzka: .doPolna)


// MARK: - 6. Вывести значения свойств экземпляров в консоль.

print(vaz2121Niva)
print(mitsubishi3000GT)
print(ural43200931)
print(uaz452)
print(acCobraMkI)
print(kamaz65802)
print("У автомобиля: \(gazel1.dvigatel.rawValue), \(gazel1.okna.rawValue), \(gazel1.pogruzka.rawValue)")
print("У автомобиля: \(gazel2.dvigatel.rawValue), \(gazel2.okna.rawValue), \(gazel2.pogruzka.rawValue)")
print("У автомобиля: \(gazel3.dvigatel.rawValue), \(gazel3.okna.rawValue), \(gazel3.pogruzka.rawValue)")
print("У автомобиля: \(gazel4.dvigatel.rawValue), \(gazel4.okna.rawValue), \(gazel4.pogruzka.rawValue)")
