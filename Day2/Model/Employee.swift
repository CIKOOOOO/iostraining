//
//  Employee.swift
//  Day2
//
//  Created by P090MMCTSE016 on 18/10/23.
//

import Foundation

struct EmployeeResponse: Decodable {
    let status: String
    let data: [Employee]
    let message: String
}

struct Employee: Decodable{
    let employee_name, profile_image : String
    let employee_age, employee_salary: Int
    
//    enum CodingKeys: String , CodingKey {
//        case name = "employee_name"
//        case salary = "employee_salary"
//        case age = "employee_age"
//    }

}
