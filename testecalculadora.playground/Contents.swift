import UIKit

//calculadora

let num1:Double = 2
let num2:Double = 3


var operacao = 10

switch operacao {
    case 1:
        print(num1 + num2)
    break
    
    case 2:
        print(num1 - num2)
    break
    
    case 3:
        print(num1 * num2)
    break
    
    case 4:
        print(num1 / num2)
    break
    
    default:
         print("Operacão inválida.")
    break
}
