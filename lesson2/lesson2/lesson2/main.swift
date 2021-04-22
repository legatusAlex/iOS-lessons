//
//  main.swift
//  lesson2
//
//  Created by RYBINTSEV Aleksandr on 09.03.2021.
//

import Foundation

//1. Написать функцию, которая определяет, четное число или нет.
func oddOrEven(number: Int) -> Bool {
    return number % 2 == 0
}

print(oddOrEven(number: 9))
print(oddOrEven(number: 10))

//2. Написать функцию, которая определяет, делится ли число без остатка на 3.
func divisibleByThree(number: Int) -> Bool {
    return number % 3 == 0
}

print(divisibleByThree(number: 9))
print(divisibleByThree(number: 10))

//3. Создать возрастающий массив из 100 чисел.
var arrayOf100: [Int] = []
arrayOf100.append(contentsOf: -50..<50)

print(arrayOf100)

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
func removeEvenAndDivisibleByThree() {
    for number in arrayOf100 {
        if oddOrEven(number: number) || !divisibleByThree(number: number) {
            arrayOf100 = arrayOf100.filter(){$0 != number}
        }
    }
}

removeEvenAndDivisibleByThree()
print(arrayOf100)
