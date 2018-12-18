//
//  Person.swift
//  第八次上机作业Table View
//
//  Created by apple on 2018/11/19.
//  Copyright © 2018年 mlj. All rights reserved.
//

import Foundation

enum Gender{
    case male,female
}

class Person {
    var firstName: String? = ""
    var lastName: String? = ""
    var age: Int? = 0
    var gender: Gender?
    var fullName : String?{
        get{
            let str = firstName! + lastName!
            return str
        }
    }
    
    init(firstName: String, lastName: String, age:Int, gender: Gender){
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.gender = gender
    }
    init(firstName: String) {
        self.firstName = firstName
    }
    
}


