//
//  AddToDoViewController.swift
//  KFullan's To Do List
//
//  Created by Kathryn Fullan on 5/2/20.
//  Copyright © 2020 Kathryn Fullan. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        
        if let titleText = titleTextField.text {
            toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
        previousVC.toDos.append(toDo)
        previousVC.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var titleTextField: UITextField!
    
    
    @IBOutlet weak var importantSwitch: UISwitch!
    
   override func viewDidLoad() {
             super.viewDidLoad()

            
         }
}
