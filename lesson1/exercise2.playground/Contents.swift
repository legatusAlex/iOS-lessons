// Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

import UIKit

let a:Double = 3
let b:Double = 4

var c:Double
var s:Double
var p:Double

s = (a * b) / 2
print("Площадь равна: \(s)")

c = sqrt(pow(a,2) + pow(b,2))
print("Гипотенуза равна: \(c)")

p = a + b + c
print("Периметр равен: \(p)")
