//
//  SRPExample.swift
//  OOP-Study
//
//  Created by ByungHoon Ann on 2023/03/22.
//

import Foundation
protocol Openable {
    mutating func open()
}

protocol Closeable {
    mutating func close()
}

// 문. 캡슐화된 상태를 갖고 있으며 메서드를 사용해 변경할 수 있다.
struct PodBayDoor: Openable, Closeable {

    private enum State {
        case open
        case closed
    }

    private var state: State = .closed

    mutating func open() {
        state = .open
    }

    mutating func close() {
        state = .closed
    }
}

// 여는 일만 담당하며 안에 무엇이 들어있는 지, 어떻게 닫는 지 모른다.
final class DoorOpener {
    private var door: Openable

    init(door: Openable) {
        self.door = door
    }

    func execute() {
        door.open()
    }
}

// 닫는 일만 담당하며 안에 무엇이 들어있는 지, 어떻게 여는 지 모른다.
final class DoorCloser {
    private var door: Closeable

    init(door: Closeable) {
        self.door = door
    }

    func execute() {
        door.close()
    }
}


protocol PaymentProtocol {
    func processPayment()
}

enum PaymentType {
    case creditCard
    case paypal
    case applePay
    
    func getPayment() -> PaymentProtocol {
        switch self {
        case .creditCard:
            return CreditCardPayment()
        case .paypal:
            return PaypalPayment()
        case .applePay:
            return ApplePayPayment()
        }
    }
}

class CreditCardPayment: PaymentProtocol {
    func processPayment() {
        // credit card payment process
    }
}

class PaypalPayment: PaymentProtocol {
    func processPayment() {
        // paypal payment process
    }
}

class ApplePayPayment: PaymentProtocol {
    func processPayment() {
        // apple pay payment process
    }
}

class PaymentHandler {
    let paymentType: PaymentType
    
    init(paymentType: PaymentType) {
        self.paymentType = paymentType
    }
    
    func processPayment() {
        let payment = paymentType.getPayment()
        payment.processPayment()
    }
}
