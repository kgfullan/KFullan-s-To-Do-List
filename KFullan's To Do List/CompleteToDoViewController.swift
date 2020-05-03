//
//  CompleteToDoViewController.swift
//  KFullan's To Do List
//
//  Created by Kathryn Fullan on 5/2/20.
//  Copyright © 2020 Kathryn Fullan. All rights reserved.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
   
    override func viewDidLoad() {
    super.viewDidLoad()
        
        titleLabel.text = selectedToDo.name
    }
    
    @IBOutlet weak var completeTapped: UIButton!
    
    var previousVC = ToDoTableViewController()
    var selectedToDo = ToDo()
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
