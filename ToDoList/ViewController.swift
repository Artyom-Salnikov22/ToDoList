//
//  ViewController.swift
//  ToDoList
//
//  Created by Артём Сальников on 21.06.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func addtask(_ sender: Any) {
        let defaults = UserDefaults.standard
        
        let taskName = textfield.text!
        var taskarray:[String] = []
//
//
//        if let array = defaults.array(forKey: "taskItemArray") {
//            taskarray = array as! [TaskItem]
//
//            taskarray.append(newTask)
//            defaults.set(taskarray, forKey: "taskItemArray")
//        } else {
//            let array = [newTask]
//
//            defaults.set(taskarray, forKey: "taskItemArray")
//        }
        
//
//
        if let array = defaults.array(forKey: "taskArray") {
            taskarray = array as! [String]

            taskarray.append(taskName)

            defaults.set(taskarray, forKey: "taskArray")
        } else {
            let array = [taskName]

            defaults.set(array, forKey: "taskArray")
        }
        
        textfield.text = ""
    }
}

