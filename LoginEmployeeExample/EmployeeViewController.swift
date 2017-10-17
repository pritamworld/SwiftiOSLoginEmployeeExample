//
//  EmployeeViewController.swift
//  LoginEmployeeExample
//
//  Created by moxDroid on 2017-10-16.
//  Copyright © 2017 moxDroid. All rights reserved.
//

import UIKit

class EmployeeViewController: UIViewController {

    @IBOutlet weak var txtSalary: UITextField!
    @IBOutlet weak var txtEmpBirthdate: UITextField!
    @IBOutlet weak var txtEmpName: UITextField!
    @IBOutlet weak var txtEmpId: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func btnSave(_ sender: UIButton) {
        
        var emp = Employee()
        emp.empId = Int(txtEmpId.text!)
        emp.empName = txtEmpName.text!
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-mm-yyyy"
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00")
        emp.birthDate = dateFormatter.date(from: txtEmpBirthdate.text!)
        emp.salary = Double(txtSalary.text!)
        
        let flag = Employee.addEmployee(emp: emp)
        if flag == true{
            print("Employee Record Saved")
        }else{
            print("Possible duplication error!!")
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
