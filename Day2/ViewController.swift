//
//  ViewController.swift
//  Day2
//
//  Created by P090MMCTSE016 on 13/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblSample2: UILabel!
    
    var name: String = ""
    @IBOutlet weak var textFieldSample: UITextField!
    
    private let segueToEmployee = "segueToEmployee"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        lblSample2.font = UIFont.boldSystemFont(ofSize: 40)
//        
//        imgSample.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width/2 , height: 300)
//        
       
    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        <#code#>
//    }
//    
    
    @IBAction func btnToEmployee(_ sender: Any) {
        self.performSegue(withIdentifier: segueToEmployee, sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueMain"{
            let svc = segue.destination as! SecondViewController
            svc.parseName = textFieldSample?.text ?? "Andrew"
        }
    }

    @IBAction func btnSample(_ sender: Any) {
        
        let text = textFieldSample.text
        
        
        if ((text?.isEmpty) == true) {
            var alert = UIAlertController(title: "Error", message: "Text shouldn't be empty", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.destructive, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{
            self.performSegue(withIdentifier: "segueMain", sender: self)
        }
        
    }
    
    
}

