//
//  VendingMachine.swift
//  OOP-Study
//
//  Created by ByungHoon Ann on 2023/03/19.
//

struct Cola: Drink {
    let name = "cola"
}

struct Ade: Drink {
    let name = "ade"
}

struct Juice: Drink {
    let name = "juice"
}

class VendingMachine {
    let drink: [Drink] = []
    
    func sell(drink: Drink) {
        print(drink.name)
    }
}
