//
//  SecondViewController.swift
//  Day2
//
//  Created by P090MMCTSE016 on 13/10/23.
//

import UIKit


private let profileCell = "ProfileCell"
private var listProfileDesc: [Profile] = []

class SecondViewController: ViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var lblName: UILabel!
    var parseName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        lblName.text = parseName
        
        tableView.register(UINib(
            nibName: "ProfileTableViewCell",
            bundle: nil
        ), forCellReuseIdentifier: profileCell)
        
        tableView.dataSource = self
        tableView.delegate = self
        
//        tableView.rowHeight = UITableView.automaticDimension
//        tableView.estimatedRowHeight = 400
    
        let profile: Profile = Profile(title: "Name", desc: "Andrew Abednego")
        let profile1: Profile = Profile(title: "Age", desc: "25")
        let profile2: Profile = Profile(title: "Description", desc: "Si Paling Pekerja Keras")
        let profile3: Profile = Profile(title: "Job", desc: "World Class Developer")
        
        listProfileDesc.append(profile)
        listProfileDesc.append(profile1)
        listProfileDesc.append(profile2)
        listProfileDesc.append(profile3)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listProfileDesc.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: profileCell, for: indexPath) as! ProfileTableViewCell
        
        
        cell.setValue(profile: listProfileDesc[indexPath.row])
        
        return cell
    }
    
    
}
