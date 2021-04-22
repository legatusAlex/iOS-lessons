//
//  main.swift
//  lesson2-starred
//
//  Created by RYBINTSEV Aleksandr on 09.03.2021.
//

import Foundation

//5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

func getFibonacciNumbers(_ n: Int) -> [Double] {
    var number: [Double] = [1, 1]
    
    (2...n).forEach {
        i in number.append(number[i - 1] + number[i - 2])
    }
    
    return number
}

print(getFibonacciNumbers(50))

//6. Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу.
//   Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:
//a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
//b. Пусть переменная p изначально равна двум — первому простому числу.
//c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
//d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
//e. Повторять шаги c и d, пока возможно.

func getSimpleNumbers(_ n: Int) -> [Int] {
    var result: [Int] = []
    var newArray: [Int] = Array(2...n)
    
    while let newP = newArray.first {
        result.append(newP)
        newArray = newArray.filter { $0 % newP != 0 }
    }
    
    return result
}

print(getSimpleNumbers(100))
