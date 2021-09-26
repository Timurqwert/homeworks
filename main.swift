//
//  main.swift
//  lesson4
//
//  Created by Тимур on 18.09.2021.
//

import Foundation

// MARK - 1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

class Car {
    var poMestuProizvodstva: String
    var poRazmeru: String
    var poKlassu: String
    var poRabochemuObymeCilindrovDvigatelia: Double
    var poChisluKoles: Int
    var poNalichiuyABS: Bool
    var poNalichiiPodushekBezopasnosti: Bool
    var gosRegZnak: String
    var motor: String
    var transmissiia: String
    var firmaProizvoditel: String
    var color: String
    var markaAvto: String
    var godVipuska: String
    init(poMestuProizvodstva: String,
         poRazmeru: String,
         poKlassu: String,
         poRabochemuObymeCilindrovDvigatelia: Double,
         poChisluKoles: Int,
         poNalichiuyABS: Bool,
         poNalichiiPodushekBezopasnosti: Bool,
         gosRegZnak: String,
         motor: String,
         transmissiia: String,
         firmaProizvoditel: String,
         color: String,
         markaAvto: String,
         godVipuska: String) {
        self.poMestuProizvodstva = poMestuProizvodstva
        self.poRazmeru = poRazmeru
        self.poKlassu = poKlassu
        self.poRabochemuObymeCilindrovDvigatelia = poRabochemuObymeCilindrovDvigatelia
        self.poChisluKoles = poChisluKoles
        self.poNalichiuyABS = poNalichiuyABS
        self.poNalichiiPodushekBezopasnosti = poNalichiiPodushekBezopasnosti
        self.gosRegZnak = gosRegZnak
        self.motor = motor
        self.transmissiia = transmissiia
        self.firmaProizvoditel = firmaProizvoditel
        self.color = color
        self.markaAvto = markaAvto
        self.godVipuska = godVipuska
    }
}

// MARK - 2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.

class TrunkCar: Car {
    var PoKakoiyGruzopodyomnostiy: String
    var PoKakomuTipuKuzova: String
    var VidPerevozimogoGruza: String
    init (PoKakoiyGruzopodyomnostiy: String,
          PoKakomuTipuKuzova: String,
          VidPerevozimogoGruza: String,
          poMestuProizvodstva: String,
          poRazmeru: String,
          poKlassu: String,
          poRabochemuObymeCilindrovDvigatelia: Double,
          poChisluKoles: Int,
          poNalichiuyABS: Bool,
          poNalichiiPodushekBezopasnosti: Bool,
          gosRegZnak: String,
          motor: String,
          transmissiia: String,
          firmaProizvoditel: String,
          color: String,
          markaAvto: String,
          godVipuska: String) {
        self.PoKakoiyGruzopodyomnostiy = PoKakoiyGruzopodyomnostiy
        self.PoKakomuTipuKuzova = PoKakomuTipuKuzova
        self.VidPerevozimogoGruza = VidPerevozimogoGruza
        super.init(poMestuProizvodstva: poMestuProizvodstva,
                   poRazmeru: poRazmeru,
                   poKlassu: poKlassu,
                   poRabochemuObymeCilindrovDvigatelia: poRabochemuObymeCilindrovDvigatelia,
                   poChisluKoles: poChisluKoles,
                   poNalichiuyABS: poNalichiuyABS,
                   poNalichiiPodushekBezopasnosti: poNalichiiPodushekBezopasnosti,
                   gosRegZnak: gosRegZnak,
                   motor: motor,
                   transmissiia: transmissiia,
                   firmaProizvoditel: firmaProizvoditel,
                   color: color,
                   markaAvto: markaAvto,
                   godVipuska: godVipuska)
    }
}

class SportCar: Car {
    var kollichestvoDverey: String
    var kollichestvoSidenii: String
    init(kollichestvoDverey: String,
         kollichestvoSidenii: String,
         poMestuProizvodstva: String,
         poRazmeru: String,
         poKlassu: String,
         poRabochemuObymeCilindrovDvigatelia: Double,
         poChisluKoles: Int,
         poNalichiuyABS: Bool,
         poNalichiiPodushekBezopasnosti: Bool,
         gosRegZnak: String,
         motor: String,
         transmissiia: String,
         firmaProizvoditel: String,
         color: String,
         markaAvto: String,
         godVipuska: String) {
        self.kollichestvoDverey = kollichestvoDverey
        self.kollichestvoSidenii = kollichestvoSidenii
        super.init(poMestuProizvodstva: poMestuProizvodstva,
                   poRazmeru: poRazmeru,
                   poKlassu: poKlassu,
                   poRabochemuObymeCilindrovDvigatelia: poRabochemuObymeCilindrovDvigatelia,
                   poChisluKoles: poChisluKoles,
                   poNalichiuyABS: poNalichiuyABS,
                   poNalichiiPodushekBezopasnosti: poNalichiiPodushekBezopasnosti,
                   gosRegZnak: gosRegZnak,
                   motor: motor,
                   transmissiia: transmissiia,
                   firmaProizvoditel: firmaProizvoditel,
                   color: color,
                   markaAvto: markaAvto,
                   godVipuska: godVipuska)
    }
}

// MARK - 3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.

enum ZaceplenenLiPricepKGGruzovomuAvto: String {
    case pricepZaceplen = "прицеп зацеплен"
    case pricepNeZaceplen = "прицеп не зацеплен"
}
func ZacepleniePricepa (for deystvie: ZaceplenenLiPricepKGGruzovomuAvto) {
    switch deystvie{
    case .pricepZaceplen:
        print(ZaceplenenLiPricepKGGruzovomuAvto.pricepZaceplen.rawValue)
    case .pricepNeZaceplen:
        print(ZaceplenenLiPricepKGGruzovomuAvto.pricepNeZaceplen.rawValue)
    }
}
enum GdeNahoditsiaSportCar: String {
    case NaTrasse = "спорткар находится на трассе"
    case NeNaTrasse = "спорткар находится не на трассе"
}
func VigonSportCaraNaTrassu (for deystvie: GdeNahoditsiaSportCar) {
    switch deystvie{
    case .NaTrasse:
        print(GdeNahoditsiaSportCar.NaTrasse.rawValue)
    case .NeNaTrasse:
        print(GdeNahoditsiaSportCar.NeNaTrasse.rawValue)
    }
}

// MARK - 4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

class NewTrunkCar: TrunkCar {
    override init (PoKakoiyGruzopodyomnostiy: String,
                   PoKakomuTipuKuzova: String,
                   VidPerevozimogoGruza: String,
                   poMestuProizvodstva: String,
                   poRazmeru: String,
                   poKlassu: String,
                   poRabochemuObymeCilindrovDvigatelia: Double,
                   poChisluKoles: Int,
                   poNalichiuyABS: Bool,
                   poNalichiiPodushekBezopasnosti: Bool,
                   gosRegZnak: String,
                   motor: String,
                   transmissiia: String,
                   firmaProizvoditel: String,
                   color: String,
                   markaAvto: String,
                   godVipuska: String) {
        super.init(PoKakoiyGruzopodyomnostiy: PoKakoiyGruzopodyomnostiy,
                   PoKakomuTipuKuzova: PoKakomuTipuKuzova,
                   VidPerevozimogoGruza: VidPerevozimogoGruza,
                   poMestuProizvodstva: poMestuProizvodstva,
                   poRazmeru: poRazmeru,
                   poKlassu: poKlassu,
                   poRabochemuObymeCilindrovDvigatelia: poRabochemuObymeCilindrovDvigatelia,
                   poChisluKoles: poChisluKoles,
                   poNalichiuyABS: poNalichiuyABS,
                   poNalichiiPodushekBezopasnosti: poNalichiiPodushekBezopasnosti,
                   gosRegZnak: gosRegZnak,
                   motor: motor,
                   transmissiia: transmissiia,
                   firmaProizvoditel: firmaProizvoditel,
                   color: color,
                   markaAvto: markaAvto,
                   godVipuska: godVipuska)
        func ZacepleniePricepa() {
        }
    }
}

class NewSportCar: SportCar {
    override init(kollichestvoDverey: String,
                  kollichestvoSidenii: String,
                  poMestuProizvodstva: String,
                  poRazmeru: String,
                  poKlassu: String,
                  poRabochemuObymeCilindrovDvigatelia: Double,
                  poChisluKoles: Int,
                  poNalichiuyABS: Bool,
                  poNalichiiPodushekBezopasnosti: Bool,
                  gosRegZnak: String,
                  motor: String,
                  transmissiia: String,
                  firmaProizvoditel: String,
                  color: String,
                  markaAvto: String,
                  godVipuska: String) {
        super.init (kollichestvoDverey: kollichestvoDverey,
                    kollichestvoSidenii: kollichestvoSidenii,
                    poMestuProizvodstva: poMestuProizvodstva,
                    poRazmeru: poRazmeru,
                    poKlassu: poKlassu,
                    poRabochemuObymeCilindrovDvigatelia: poRabochemuObymeCilindrovDvigatelia,
                    poChisluKoles: poChisluKoles,
                    poNalichiuyABS: poNalichiuyABS,
                    poNalichiiPodushekBezopasnosti: poNalichiiPodushekBezopasnosti,
                    gosRegZnak: gosRegZnak,
                    motor: motor,
                    transmissiia: transmissiia,
                    firmaProizvoditel: firmaProizvoditel,
                    color: color,
                    markaAvto: markaAvto,
                    godVipuska: godVipuska)
        func ZacepleniePricepa() {
        }
    }
}

// MARK - 5. Создать несколько объектов каждого класса. Применить к ним различные действия.

let NewTrunkCarOne = NewTrunkCar(PoKakoiyGruzopodyomnostiy: "5 тонн", PoKakomuTipuKuzova: "самосвал", VidPerevozimogoGruza: "сыпучие", poMestuProizvodstva: "завод имени лихачева", poRazmeru: "большой", poKlassu: "самосвал", poRabochemuObymeCilindrovDvigatelia: 5, poChisluKoles: 6, poNalichiuyABS: false, poNalichiiPodushekBezopasnosti: false, gosRegZnak: "л634ал50RUS", motor: "какой-то", transmissiia: "ьеханика", firmaProizvoditel: "ЗИЛ", color: "синий", markaAvto: "ЗИЛ", godVipuska: "1994")

let NewTrunkCarTwo = NewTrunkCar(PoKakoiyGruzopodyomnostiy: "10 тонн", PoKakomuTipuKuzova: "бортовой", VidPerevozimogoGruza: "грузопассажирский", poMestuProizvodstva: "камский автомобильный завод", poRazmeru: "большой", poKlassu: "бортовой", poRabochemuObymeCilindrovDvigatelia: 7, poChisluKoles: 10, poNalichiuyABS: false, poNalichiiPodushekBezopasnosti: false, gosRegZnak: "о253отRUS", motor: "в-образный", transmissiia: "механика", firmaProizvoditel: "камаз", color: "белый", markaAvto: "камаз", godVipuska: "1988")

let NewSportCarOne = NewSportCar(kollichestvoDverey: "2", kollichestvoSidenii: "2", poMestuProizvodstva: "сша", poRazmeru: "средний", poKlassu: "пассажирский", poRabochemuObymeCilindrovDvigatelia: 5, poChisluKoles: 4, poNalichiuyABS: true, poNalichiiPodushekBezopasnosti: true, gosRegZnak: "л556оу58RUS", motor: "в-образный", transmissiia: "автомат", firmaProizvoditel: "форд", color: "желтый", markaAvto: "мустанг", godVipuska: "2010")

let NewSportCarTwo = NewSportCar(kollichestvoDverey: "2", kollichestvoSidenii: "2", poMestuProizvodstva: "италия", poRazmeru: "средний", poKlassu: "пассажирский", poRabochemuObymeCilindrovDvigatelia: 6, poChisluKoles: 4, poNalichiuyABS: true, poNalichiiPodushekBezopasnosti: true, gosRegZnak: "л247оу58RUS", motor: "в-образный", transmissiia: "автомат", firmaProizvoditel: "ферари", color: "красный", markaAvto: "ферари", godVipuska: "2015")

// MARK - 6. Вывести значения свойств экземпляров в консоль.

print(NewTrunkCarOne)
print(NewTrunkCarTwo)
print(NewSportCarOne)
print(NewSportCarTwo)
