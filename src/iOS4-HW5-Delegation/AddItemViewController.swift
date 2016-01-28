//
//  AddItemViewController.swift
//  iOS4-HW5-Delegation
//
//  Created by Kathryn Rotondo on 1/20/16.
//  Copyright © 2016 Kathryn Rotondo. All rights reserved.
//

import UIKit
protocol TodoSaver{
    func saveTodo(todo:Todo)
}


class AddItemViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTextField: UITextField!
    
    var delegate:TodoSaver?
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func saveButtonPressed(sender: AnyObject) {
        if let title = titleTextField.text{
            let todo = Todo()
            todo.title=title
            todo.description = descriptionTextField.text!
            delegate?.saveTodo(todo)
        }
        navigationController?.popViewControllerAnimated(true)
    }
}
