//
//  ViewController.swift
//  第八次上机作业Table View
//
//  Created by apple on 2018/11/19.
//  Copyright © 2018年 mlj. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var chooseLabel: UILabel!
    
    
    
    var personArray = [Person]()
//    var stuArray = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // return stuArray.count
        return personArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "stuCell") as! MYTableViewCell
        
        //cell.myLabel.text = stuArray[indexPath.row]
        cell.myLabel.text = personArray[indexPath.row].fullName
        print("\(String(describing: cell.myLabel.text))成功！")
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

   personArray.append(Person(firstName: "mo",lastName:"linjun",age: 2, gender: Gender.female))
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        chooseLabel.text = "You choose: \(stuArray[indexPath.row])"
        
        chooseLabel.text = "You choose: \(personArray[indexPath.row].fullName!)"
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
//            stuArray.remove(at: indexPath.row)
            personArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
        }
    }
    
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func edit(_ sender: Any) {
        tableView.isEditing = true
        
    }
    @IBAction func addClicked(_ sender: Any) {
      //  stuArray.append(nameTextField.text!)
        if let name = nameTextField.text{
//            stuArray.append(name)
            personArray.append(Person(firstName: name))
            tableView.reloadData()
            nameTextField.resignFirstResponder()
        }
    }
    
    
}

