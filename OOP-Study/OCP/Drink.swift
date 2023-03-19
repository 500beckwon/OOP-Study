//
//  Drink.swift
//  OOP-Study
//
//  Created by ByungHoon Ann on 2023/03/19.
//

/*
 ### 리스코프 치환 원칙 (Liskov Substitution Principle)
 - 모듈은 확장에는 열려있어야 하고, 변경에는 닫혀있어야 한다
 - 기능을 변경 또는 확장할 수 있으면서, 그 기능을 사용하는 코드는 수정하지 않아야 한다
 
 */

/*
 
 /// Drink에 다른 음료가 추가되면 기존 코드를 수정하게 되기 때문에 변경에 열려있게 되어 OCP를 위반하게 된다
 enum Drink {
     case cola
     case ade
     case juice
 
     var name: String {
         switch self {
         case .cola:
             return "cola"
         case .ade:
             return "ade"
         case .juice:
             return "juice"
         }
     }
 }
 
 class VendingMachine {
     let drink: [Drink] = []
 
     func sell(drink: Drink) {
         print(drink.name)
     }
 }
 */

protocol Drink {
    var name: String { get }
}




