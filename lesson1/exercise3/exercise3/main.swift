//
//  main.swift
//  exercise3
//
//  Created by RYBINTSEV Aleksandr on 21.01.2021.
//

import Foundation

// Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

class InputClass {
    func inputString() -> String {
        let keyboard = FileHandle.standardInput
        let inputData = keyboard.availableData
        return String(data: inputData, encoding: .utf8)!
    }

    func inputDouble() -> Double {
        let keyboard = FileHandle.standardInput
        let inputData = keyboard.availableData
        let str = String(data: inputData, encoding: .utf8)!
        let i = Double(str.replacingOccurrences(of: "\n", with: ""))!
        return i
    }
}

print("Введите сумму вклада:")
var vklad:Double = InputClass().inputDouble()

print("Введите годовой процент:")
let percent:Double = InputClass().inputDouble()

var years:Int = 1

while years <= 5 {
    let onePercent = vklad / 100 //здесь мы находим чему равен один процент вклада
    let annualIncome = onePercent * percent
    vklad += annualIncome // здесь мы находим сумму вклада через год
    years += 1
}

print("Сумма вклада через 5 лет равна: \(vklad)")
