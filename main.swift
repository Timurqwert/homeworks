//
//  main.swift
//  lesson2
//
//  Created by Тимур on 11.09.2021.
//

import Foundation

// MARK: - Написать функцию, которая определяет, четное число или нет.

let anyNumber = Int(arc4random_uniform(100)+1)

func opredelenieChetnostiChisla() {
    if anyNumber % 2 == 0 {
        print("\(anyNumber) - четное число")
    } else if anyNumber % 2 != 0 {
        print("\(anyNumber) - нечетное число")
    } else  {
        print("чтото пошло не так")
    }
}
opredelenieChetnostiChisla()

// MARK: - Написать функцию, которая определяет, делится ли число без остатка на 3.

func delitsyLiChisloNaTriBezOstatka() {
    let ostatok = anyNumber % 3
    if anyNumber == 1 || anyNumber == 2 {
        print("\(anyNumber) целиком не делится на 3")
    } else if ostatok == 0 {
        print("\(anyNumber) - делится на 3 без остатка")
    } else if ostatok != 0 {
        print("\(anyNumber) - неделится на 3 без остатка, остаток \(ostatok)")
    } else {
        print("чтото пошло не так")
    }
}
delitsyLiChisloNaTriBezOstatka()

// MARK: - Создать возрастающий массив из 100 чисел.

var massivIzStaChisel = [Int]()

for number in 1...100 {
    massivIzStaChisel.append(number)
}
print("количество чисел в массиве = \(massivIzStaChisel.count)")
print(massivIzStaChisel)

// MARK: - Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

let filtrovannyiMassiv = massivIzStaChisel.filter {$0 % 2 != 0 && $0 % 3 == 0}
print(" \(filtrovannyiMassiv) - фильтрованный массив")

// MARK: - Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

func massivFibonachi(_ n: Int) -> [Double] {
    var fibonachi: [Double] = [1, 1]
    (2...n).forEach { i in
        fibonachi.append(fibonachi[i - 1] + fibonachi[i - 2])
    }
    return fibonachi
}
print(" \(massivFibonachi(50)) - фибоначи массив")


// MARK: - Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:
// MARK: - a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).

var massivprostihChisel = [Int]()

for n in 2...1000 {
    if massivprostihChisel.count < 100 {
        if massivprostihChisel.allSatisfy({ n % $0 != 0 }) {
            massivprostihChisel.append(n)
        }
    }
}
print(" \(massivprostihChisel) - массив простых чисел")
