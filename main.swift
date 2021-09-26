//
//  main.swift
//  lesson5
//
//  Created by Тимур on 26.09.2021.
//

import Foundation

// MARK: - 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.

protocol CarProtocol {
    var mestoProizvodstva: String { get set }
    var razmer: String { get set }
    var klass: String { get set }
    var rabochiiObymeCilindrovDvigatelia: Double { get set }
    var chisloKoles: Int { get set }
    var isNalichieABS: Bool { get set }
    var isNalichiePodushekBezopasnosti: Bool { get set }
    var gosRegZnak: String { get set }
    var motor: String { get set }
    var transmissiia: String { get set }
    var firmaProizvoditel: String { get set }
    var color: String { get set }
    var markaAvto: String { get set }
    var godVipuska: String { get set }

    func printSvoystva()
}

// MARK: - 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).

enum Window {
    case close
    case open
}
enum Engine {
    case start
    case stop
}
enum Music {
    case turnOn
    case turnOff
}

extension CarProtocol {

    func Window (action: Window) {
        switch action {
        case .close:
            print("окно закрыто")
        case .open:
            print("окно открыто")
        }
    }
}

extension CarProtocol {

    func Engine (action: Engine) {
        switch action {
        case .start:
            print("двигатель запущен")
        case .stop:
            print("двигатель заглушен")
        }
    }
}

extension CarProtocol {

    func Music (action: Music) {
        switch action {
        case .turnOn:
            print("музыка включена")
        case .turnOff:
            print("музыка выключена")
        }
    }
}

// MARK: - 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.

final class TrunkCar: CarProtocol {
    var gruzopodyemnost: Int
    var gruz: String
    var mestoProizvodstva: String
    var razmer: String
    var klass: String
    var rabochiiObymeCilindrovDvigatelia: Double
    var chisloKoles: Int
    var isNalichieABS: Bool
    var isNalichiePodushekBezopasnosti: Bool
    var gosRegZnak: String
    var motor: String
    var transmissiia: String
    var firmaProizvoditel: String
    var color: String
    var markaAvto: String
    var godVipuska: String

    init(gruzopodyemnost: Int,
         gruz: String,
         mestoProizvodstva: String,
         razmer: String,
         klass: String,
         rabochiiObymeCilindrovDvigatelia: Double,
         chisloKoles: Int,
         isNalichieABS: Bool,
         isNalichiePodushekBezopasnosti: Bool,
         gosRegZnak: String,
         motor: String,
         transmissiia: String,
         firmaProizvoditel: String,
         color: String,
         markaAvto: String,
         godVipuska: String) {

        self.gruzopodyemnost = gruzopodyemnost
        self.gruz = gruz
        self.mestoProizvodstva = mestoProizvodstva
        self.razmer = razmer
        self.klass = klass
        self.rabochiiObymeCilindrovDvigatelia = rabochiiObymeCilindrovDvigatelia
        self.chisloKoles = chisloKoles
        self.isNalichieABS = isNalichieABS
        self.isNalichiePodushekBezopasnosti = isNalichiePodushekBezopasnosti
        self.gosRegZnak = gosRegZnak
        self.motor = motor
        self.transmissiia = transmissiia
        self.firmaProizvoditel = firmaProizvoditel
        self.color = color
        self.markaAvto = markaAvto
        self.godVipuska = godVipuska
    }

    func printSvoystva() {
        print(TrunkCar.self)
    }
}

final class SportСar: CarProtocol {
    var maxSpeed: Int
    var vesBolida: Int
    var mestoProizvodstva: String
    var razmer: String
    var klass: String
    var rabochiiObymeCilindrovDvigatelia: Double
    var chisloKoles: Int
    var isNalichieABS: Bool
    var isNalichiePodushekBezopasnosti: Bool
    var gosRegZnak: String
    var motor: String
    var transmissiia: String
    var firmaProizvoditel: String
    var color: String
    var markaAvto: String
    var godVipuska: String

    init(maxSpeed: Int,
         vesBolida: Int,
         mestoProizvodstva: String,
         razmer: String,
         klass: String,
         rabochiiObymeCilindrovDvigatelia: Double,
         chisloKoles: Int,
         isNalichieABS: Bool,
         isNalichiePodushekBezopasnosti: Bool,
         gosRegZnak: String,
         motor: String,
         transmissiia: String,
         firmaProizvoditel: String,
         color: String,
         markaAvto: String,
         godVipuska: String) {

        self.maxSpeed = maxSpeed
        self.vesBolida = vesBolida
        self.mestoProizvodstva = mestoProizvodstva
        self.razmer = razmer
        self.klass = klass
        self.rabochiiObymeCilindrovDvigatelia = rabochiiObymeCilindrovDvigatelia
        self.chisloKoles = chisloKoles
        self.isNalichieABS = isNalichieABS
        self.isNalichiePodushekBezopasnosti = isNalichiePodushekBezopasnosti
        self.gosRegZnak = gosRegZnak
        self.motor = motor
        self.transmissiia = transmissiia
        self.firmaProizvoditel = firmaProizvoditel
        self.color = color
        self.markaAvto = markaAvto
        self.godVipuska = godVipuska
    }

    func printSvoystva() {
        print(TrunkCar.self)
    }
}

// MARK: - 4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "свойства грузового автомобиля \(gruzopodyemnost), \(gruz), \(mestoProizvodstva), \(razmer), \(klass), \(rabochiiObymeCilindrovDvigatelia), \(chisloKoles), \(isNalichieABS), \(isNalichiePodushekBezopasnosti), \(gosRegZnak), \(motor), \(transmissiia), \(firmaProizvoditel), \(color), \(markaAvto), \(godVipuska)"
    }
}


extension SportСar: CustomStringConvertible {
    var description: String {
        return "свойства спортивного автомобиля \(maxSpeed), \(vesBolida), \(mestoProizvodstva), \(razmer), \(klass), \(rabochiiObymeCilindrovDvigatelia), \(chisloKoles), \(isNalichieABS), \(isNalichiePodushekBezopasnosti), \(gosRegZnak), \(motor), \(transmissiia), \(firmaProizvoditel), \(color), \(markaAvto), \(godVipuska)"
    }
}

// MARK: - 5. Создать несколько объектов каждого класса. Применить к ним различные действия.

let firstTrunkCar = TrunkCar(gruzopodyemnost: 10, gruz: "вода", mestoProizvodstva: "Чехия", razmer: "средний", klass: "цистерна", rabochiiObymeCilindrovDvigatelia: 8, chisloKoles: 6, isNalichieABS: true, isNalichiePodushekBezopasnosti: true, gosRegZnak: "р977оп", motor: "В-образный", transmissiia: "МКПП", firmaProizvoditel: "МАН", color: "желтый", markaAvto: "МАН", godVipuska: "1986")

let secondTrunkCar = TrunkCar(gruzopodyemnost: 10, gruz: "вода", mestoProizvodstva: "Чехия", razmer: "средний", klass: "цистерна", rabochiiObymeCilindrovDvigatelia: 8, chisloKoles: 6, isNalichieABS: true, isNalichiePodushekBezopasnosti: true, gosRegZnak: "р977оп", motor: "В-образный", transmissiia: "МКПП", firmaProizvoditel: "МАН", color: "желтый", markaAvto: "МАН", godVipuska: "1986")

let thirdTrunkCar = TrunkCar(gruzopodyemnost: 10, gruz: "вода", mestoProizvodstva: "Чехия", razmer: "средний", klass: "цистерна", rabochiiObymeCilindrovDvigatelia: 8, chisloKoles: 6, isNalichieABS: true, isNalichiePodushekBezopasnosti: true, gosRegZnak: "р977оп", motor: "В-образный", transmissiia: "МКПП", firmaProizvoditel: "МАН", color: "желтый", markaAvto: "МАН", godVipuska: "1986")

let firstSportСar = SportСar(maxSpeed: 280, vesBolida: 760, mestoProizvodstva: "Япония", razmer: "малый", klass: "болид", rabochiiObymeCilindrovDvigatelia: 5, chisloKoles: 4, isNalichieABS: true, isNalichiePodushekBezopasnosti: true, gosRegZnak: "ра974в", motor: "В-образный", transmissiia: "АКПП", firmaProizvoditel: "тойота", color: "черный", markaAvto: "тойота", godVipuska: "1998")

let secondSportСar = SportСar(maxSpeed: 280, vesBolida: 760, mestoProizvodstva: "Япония", razmer: "малый", klass: "болид", rabochiiObymeCilindrovDvigatelia: 5, chisloKoles: 4, isNalichieABS: true, isNalichiePodushekBezopasnosti: true, gosRegZnak: "ра974в", motor: "В-образный", transmissiia: "АКПП", firmaProizvoditel: "тойота", color: "черный", markaAvto: "тойота", godVipuska: "1998")

let thirdSportСar = SportСar(maxSpeed: 280, vesBolida: 760, mestoProizvodstva: "Япония", razmer: "малый", klass: "болид", rabochiiObymeCilindrovDvigatelia: 5, chisloKoles: 4, isNalichieABS: true, isNalichiePodushekBezopasnosti: true, gosRegZnak: "ра974в", motor: "В-образный", transmissiia: "АКПП", firmaProizvoditel: "тойота", color: "черный", markaAvto: "тойота", godVipuska: "1998")

// MARK: - 6. Вывести сами объекты в консоль.

print(firstTrunkCar)
print(secondTrunkCar)
print(thirdTrunkCar)
print(firstSportСar)
print(secondSportСar)
print(thirdSportСar)
