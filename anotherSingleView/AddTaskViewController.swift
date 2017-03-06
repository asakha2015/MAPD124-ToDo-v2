//
//  AddTaskViewController.swift
//  MAPD124-ToDo-v2
//
//  Created by Reza on 2017-03-02.
//  Copyright © 2017 Reza. All rights reserved.
//
//  Task Screen controller

import UIKit

class AddTaskViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var noteField: UITextField!
    
    @IBOutlet weak var isImp: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //button pressed in Task Edit screen
    @IBAction func btnPressed(_ sender: Any) {
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let task = Task(context: context)
        task.name = textField.text!
        task.note = noteField.text!
        task.isImportant = isImp.isOn
        
        //Save the data to coredata
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
        
    }
    
}
