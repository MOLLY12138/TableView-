//
//  student.swift
//  第八次上机作业Table View
//
//  Created by student on 2018/11/22.
//  Copyright © 2018年 mlj. All rights reserved.
//

import Foundation

class Student : Person{
    var stuNo : Int
    init(stuNo:Int,firstName: String, lastName: String, age: Int, gender: Gender)
    {
        self.stuNo = stuNo
        super.init(firstName: firstName, lastName: lastName, age: age, gender: gender)
    }
    
//    override init(firstName: String) {
//        super.init(firstName: firstName)
//    }
//    override var description:String{
//        return"stuNo: \(self.stuNo),fullname: \(self.fullName), age: \(self.age), gender: \(self.gender)"
//    }
    
}
