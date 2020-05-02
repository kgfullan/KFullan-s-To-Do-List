//
//  ToDo.swift
//  KFullan's To Do List
//
//  Created by Kathryn Fullan on 5/2/20.
//  Copyright © 2020 Kathryn Fullan. All rights reserved.
//

import UIKit

class ToDo {
    var name = ""
    var important = false
}

func createToDos() -> [ToDo] {
    let swift = ToDo()
    swift.name = "Learn Swift"
    swift.important = true
    
    let dog = ToDo()
    dog.name = "Walk the Dog"
    
    return [swift, dog]
}
