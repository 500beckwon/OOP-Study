//
//  Market.swift
//  OOP-Study
//
//  Created by ByungHoon Ann on 2023/03/18.
//

import Foundation


/*
 어떤 class에서 여러가지 책임을 가지고 있으면 안됀다
 -> 왜? 객체가 담당하는 동작, 책임이 많아질 수록 그 객체의 변경에 따른 영향도의 양과 범위가 매우 커지게 되어 수정이나 작업의 양이 많아지 때문에
 
 이를 OOP에서 SRP(Single Responsibility Principle) 즉
 하나의 객체는 반드시 하나의 기능만을 수행하는 책임을 갖는다는 단일 책임원칙을 적용해야 한다
 
 SRP를 적용하게 되면 응집도는 높고 결합도는 낮은 코드를 구성할 수 있고 코드의 확장과 수정이 용이해진다

 Market class에 2개 이상의 Manager class를 초기화 하여 사용 할 때 class를 직접 참조하여 사용하게 되면 DIP를 위반하게 되기 때문에 protocol로 넘겨주는게 좋다
 DIP(Dependency Inversion Principle) 원칙이란 객체에서 어떤 Class를 참조해서 사용해야하는 상황이 생긴다면
 그 class를 직접 참조하는 것이 아니라 그 대상의 상위 요소(추상 클래스 or protocol)로 참조하라는 원칙이다.
 다시 말하면 클라이언트(사용자)가 상속 관계로 이루어진 모듈을 가져다 사용할때, 하위 모듈을 직접 인스턴스를 가져다 쓰지 말라는 뜻이다.
 왜냐하면 그렇게 할 경우, 하위 모듈의 구체적인 내용에 클라이언트가 의존하게 되어 하위 모듈에 변화가 있을 때마다 클라이언트나 상위 모듈의 코드를
 자주 수정해야 되기 때문이다.

 따라서 한마디로 상위의 인터페이스 타입의 객체로 통신하라는 원칙이다.
 */

class Market {
    let stockManager: Storable
    let sellManager: Salable
    let deliveryManager: Deliverable
    
    init(stockManager: Storable, sellManager: Salable, deliveryManager: Deliverable) {
        self.stockManager = stockManager
        self.sellManager = sellManager
        self.deliveryManager = deliveryManager
    }
}
