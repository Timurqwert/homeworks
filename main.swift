//
//  main.swift
//  homework
//
//  Created by Тимур on 11.09.2021.
//

import Foundation

// MARK: - Решить квадратное уравнение.
// ax^2 + bx + c = 0


var x1: Double = 0
var x2: Double = 0
var diskriminant: Double = 0

let a = Double(arc4random_uniform(20)+1)
let b = Double(arc4random_uniform(20)+1)
let c = Double(arc4random_uniform(20)+1)

diskriminant = b * b - 4 * a * c

if diskriminant > 0 {
    x1 = (-b + sqrt(diskriminant)) / (2 * a)
    x2 = (-b - sqrt(diskriminant)) / (2 * a)
    print("X1 = \(x1); X2 = \(x2)")
} else if diskriminant == 0 {
    x1 = (-b + sqrt(diskriminant)) / (2 * a)
    print("X1 = X2 = \(x1)")
} else {
    print("Не имеет решение")
}


// MARK: -  Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.


let katetA = Double(arc4random_uniform(20)+1)
let katetB = Double(arc4random_uniform(20)+1)

let plochadTreugolnika = Double((katetA * katetB) / 2)
print("Площадь треугольника равна \(plochadTreugolnika)")

let gipotenuza = sqrt(katetA * katetA + katetB * katetB)
print("Гипотенуза равна \(gipotenuza)")

let perimetr = katetA + katetB + gipotenuza
print("Периметр равен \(perimetr)")


// MARK: -  Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.


let summaVklada = Double(arc4random_uniform(100000)+1)
let godovoyProcent = Double(arc4random_uniform(10)+1)

let summaVkladaCherezPyatLet =  Double(summaVklada * pow(1 + (godovoyProcent / 100),5))
print("Сумма вклада через 5 лет \(summaVkladaCherezPyatLet)")

