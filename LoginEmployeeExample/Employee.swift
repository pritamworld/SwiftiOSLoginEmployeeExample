//
//  Employee.swift
//  LoginEmployeeExample
//
//  Created by moxDroid on 2017-10-16.
//  Copyright © 2017 moxDroid. All rights reserved.
//

import Foundation
class Employee{
    var empId: Int!
    var empName: String!
    var birthDate: Date!
    var salary: Double!
    private static var employeeList = [Int:Employee]()
    
    init(){
        self.empId = -1
        self.empName = ""
        self.birthDate = Date()
        self.salary = 0.0
    }
    
    init(_ empId:Int, _ empName: String, _ birthDate: Date , _ salary: Double){
        self.empId = empId
        self.empName = empName
        self.birthDate = birthDate
        self.salary = salary
    }
    
    static func addEmployee(emp: Employee) -> Bool{
        
        if self.employeeList[emp.empId] == nil{
        self.employeeList[emp.empId] = emp
            return true
        }
        return false
    }
    
    static func getEmployeeByID(empId: Int) -> Employee{
        
        if self.employeeList[empId] != nil{
            return self.employeeList[empId]!
        }
        return Employee()
    }
    
    static func getAllEmployee() -> [Int:Employee] {
        return employeeList
    }
    
    static func updateEmployeeByID(emp: Employee) -> Bool{
        
        if self.employeeList[emp.empId] != nil{
            self.employeeList[emp.empId] = emp
            return true
        }
        return false
    }
    
    static func removeEmployee(emp: Employee) -> Bool{
        
        if self.employeeList[emp.empId] != nil{
            //let index = self.employeeList.index(forKey: emp.empId)
            self.employeeList.removeValue(forKey: emp.empId)
            return true
        }
        return false
    }
    
    static func removeEmployeeById(empID: Int) -> Bool{
        if self.employeeList[empID] != nil{
            //let index = self.employeeList.index(forKey: emp.empId)
            self.employeeList.removeValue(forKey: empID)
            return true
        }
        return false
    }
    
    static func removeAllEmployee(){
        self.employeeList.removeAll()
    }
    
    
}
