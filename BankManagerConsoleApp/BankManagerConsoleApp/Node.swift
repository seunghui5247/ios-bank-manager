//
//  Node.swift
//  BankManagerConsoleApp
//
//  Created by 세윤 on 2022/10/12.
//

import Foundation

final class Node<T> {
    var data: T
    var next: Node<T>?
    
    init(data: T, next: Node<T>?) {
        self.data = data
        self.next = next
    }
}
