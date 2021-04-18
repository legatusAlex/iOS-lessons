//Решение квадратного уравнения

import UIKit

let a:Float = 5
let b:Float = 8
let c:Float = 3

var x:Float
var x1:Float
var x2:Float
var discr:Float

discr = pow(b,2) - (4 * a * c)
print("Дескриминант: \(discr)")

if(discr > 0){
    x1 = (-b + sqrt(discr)) / (2 * a)
    x2 = (-b - sqrt(discr)) / (2 * a)
    print(x1, x2)
}
else if(discr == 0){
    x = -b / (2 * a)
    print(x)
}
else {
    print("Корней нет")
}
