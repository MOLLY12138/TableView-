//
//  teacher.swift
//  第八次上机作业Table View
//
//  Created by student on 2018/11/22.
//  Copyright © 2018年 mlj. All rights reserved.
//

import Foundation

class Teacher : Person{
    var title : String
    
    init(title:String,firstName: String, lastName: String, age: Int, gender: Gender){
        self.title = title
        super.init(firstName: firstName, lastName: lastName, age: age, gender: gender)
    }
    
//    override var description: String{
//        return "title: \(self.title),fullname: \(self.fullName), age: \(self.age), gender: \(self.gender)"
//    }
    
}

