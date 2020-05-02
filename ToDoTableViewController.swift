//
//  TableViewController.swift
//  KFullan's To Do List
//
//  Created by Kathryn Fullan on 5/2/20.
//  Copyright © 2020 Kathryn Fullan. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    func createToDos() -> [ToDo] {
        let swift = ToDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = ToDo()
        dog.name = "Walk the Dog"
        
        return [swift, dog]
    }

    var toDos : [ToDo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        toDos = createToDos()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        
        if toDo.important {
            cell.textLabel?.text = "❗️" + toDo.name
        } else {
            cell.textLabel?.text = toDo.name
        }
        
        return cell
    }
}
