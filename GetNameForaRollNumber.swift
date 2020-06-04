//
//  ViewController.swift
//  RollNumber
//
//  Created by Priyanka K on 03/06/20.
//  Copyright © 2020 Priyanka K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let aClassDetails : [String:Int]  = [ "akash":1,"arya":2,"chaitra":3]
        let bClassDetails : [String:Int]  = [ "aryan":1,"abhilasha":2,"pavani":3]
        let cClassDetails : [String:Int]  = [ "arjit":1,"simi":2,"shali":3]
        let dClassDetails : [String:Int]  = [ "kunal":1,"surfoz":2,"pax":3]

       
        getStudentNameforaRollNumber(studentDetails:bClassDetails,rollNumber:3)
    }

    func getStudentNameforaRollNumber(studentDetails:[String:Int],rollNumber:Int) -> [String] {
        var nameArray :[String] = []
        
        for (key,value) in studentDetails {
            
            if value == rollNumber {
                nameArray.append(key)
                print(nameArray)
            }
        }
        return nameArray
        
        
        
    }
 
}

