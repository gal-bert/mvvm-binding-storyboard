//
//  Observable.swift
//  MVVM Binding Storyboard
//
//  Created by Gregorius Albert on 08/08/22.
//

import UIKit

class Observable<T> {
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    private var listener: ((T) -> Void)?
    
    init(_ value: T)  {
        self.value = value
    }
    
    func bind(_ listener: @escaping(T) -> Void) {
        listener(value)
        self.listener = listener
    }
    
}
