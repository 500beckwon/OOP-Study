//
//  ViewController.swift
//  OOP-Study
//
//  Created by ByungHoon Ann on 2023/03/18.
//

import UIKit

class ViewController: UIViewController {

    let vendingMachine = VendingMachine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func srpTest() {
        let door = PodBayDoor()
        // ⚠️ `DoorOpeneer`만이 문을 여는 책임이 있다.
        let doorOpener = DoorOpener(door: door)
        doorOpener.execute()

        // ⚠️ 문을 닫은 후 다른 작업을 해야 하는 경우,
        // 알람을 켜는 것처럼 `DoorOpener` 클래스를 변경할 필요가 없다.
        let doorCloser = DoorCloser(door: door)
        doorCloser.execute()
    }
}

