//
//  main.swift
//  lesson6
//
//  Created by Тимур on 26.09.2021.
//

import Foundation

struct Queue<T> {
    private var massiv = [T]()

    subscript(index: Int) -> T? {
        get {
            if index >= massiv.count {
                return nil
            } else {
                return massiv[index]
            }
        }
        set {
            massiv[index] = newValue!
        }
    }

    mutating func add(_ element: T){
        massiv.append(element)
    }

    func filter(_ count: (T) -> Bool) -> [T]  {
        var newFilterArray = [T]()

        for i in massiv {
            if count(i) {
                newFilterArray.append(i)
            }
        }
        return newFilterArray
    }

    mutating func join(_ fnumbers: (T,T) -> T) -> T? {
        if massiv.count == 0 {
            return nil
        } else if massiv.count == 1 {
            return massiv.first
        }

        var res = massiv[0]
        for i in massiv.dropFirst(){
            res = fnumbers(res, i)
        }
        return res
    }
}


var queue = Queue<Int>()
for i in 1...99 {
    queue.add(i)
}
print(queue[1000] ?? "за пределами границ")

var filterMasArray = queue.filter(){$0 % 2 == 0}
print(filterMasArray)

var sumMasArray = queue.join() {$0 + $1}
print("Сумма всех чисел массива = \(sumMasArray!)")


var stringQueue = Queue<String>()

stringQueue.add("что-то")
stringQueue.add("как-то")


var rez = stringQueue.join({(x: String, y: String) -> String in
    return x + ", " + y
})
print(rez!)
