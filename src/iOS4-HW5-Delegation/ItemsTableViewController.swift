//
//  ItemsTableViewController.swift
//  iOS4-HW5-Delegation
//
//  Created by Kathryn Rotondo on 1/20/16.
//  Copyright © 2016 Kathryn Rotondo. All rights reserved.
//

import UIKit

class ItemsTableViewController: UITableViewController, TodoSaver {

    var items:[Todo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //5. conform to protocol
    // MARK: - Todo saver
    
    func saveTodo(todo: Todo) {
        //add this to the todos array
        items.append(todo)
        //refresh the tableview
        tableView.reloadData()
    }
    
    // MARK: - Table view data source


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("todoCellIdentifier", forIndexPath: indexPath) as! TodoTableViewCell
        let todo = items[indexPath.row]
        cell.titleLabel?.text = todo.title
        cell.descriptionLabel?.text = todo.description
        
        return cell
    }
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let addTodoViewController = segue.destinationViewController as! AddItemViewController
        addTodoViewController.delegate=self
        
        //6. pass self as delegate
    }
}
