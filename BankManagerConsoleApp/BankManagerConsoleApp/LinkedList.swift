//
//  LinkedList.swift
//  BankManagerConsoleApp
//
//  Created by 세윤 on 2022/10/12.
//

import Foundation

struct LinkedList<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    
    var isEmpty: Bool {
        head == nil
    }
    
    var peek: T? {
        head?.data
    }
    
    private mutating func push(data: T) {
        head = Node(data: data, next: head)
        
        if tail == nil {
            tail = head
        }
    }
    
    mutating func append(data: T) {
        guard !isEmpty else {
            push(data: data)
            return
        }
        
        let node = Node(data: data, next: nil)
        
        tail?.next = node
        tail = node
    }
    
    mutating func removeFirst() -> T? {
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        return head?.data
    }
    
    mutating func removeAll() {
        head = nil
        tail = nil
    }
}
