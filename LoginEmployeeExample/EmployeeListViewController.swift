//
//  EmployeeListViewController.swift
//  LoginEmployeeExample
//
//  Created by moxDroid on 2017-10-16.
//  Copyright © 2017 moxDroid. All rights reserved.
//

import UIKit

class EmployeeListViewController: UIViewController {

    @IBOutlet weak var lblEmpdata: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let empList = Employee.getAllEmployee()
        var s = String()
        for (key, value) in empList{
            s +=  "\(key) -- > \(value.empName!)\n"
        }
        print(s)
        lblEmpdata.text = s
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
