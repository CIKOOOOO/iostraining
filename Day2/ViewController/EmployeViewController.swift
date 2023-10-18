//
//  EmployeViewController.swift
//  Day2
//
//  Created by P090MMCTSE016 on 18/10/23.
//

import UIKit
import Alamofire

private let employeeCell = "cellEmployee"
private let urlEmployee = "https://dummy.restapiexample.com/api/v1/employees"
private var arrDataEmployee: [Employee] = []

class EmployeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tcEmployee: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tcEmployee.register(UINib(
            nibName: "EmployeeTableCell",
            bundle: nil
        ), forCellReuseIdentifier: employeeCell)
        
        tcEmployee.dataSource = self
        tcEmployee.delegate = self
        
        loadData()
    }
    
    func loadData(){
        let urlConvertible: URLConvertible = urlEmployee
        let responses = AF.request(urlConvertible)
        
        responses.response{
            responseData in
            if let responseData = responseData.data{
                do {
                    let result = try JSONDecoder().decode(EmployeeResponse.self, from: responseData)
                    arrDataEmployee.append(contentsOf: result.data)
                    
                    DispatchQueue.main.async {
                        self.tcEmployee.reloadData()
                    }
                } catch let jsonErr {
                    print("Error Serialization json:", jsonErr)
                }
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrDataEmployee.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: employeeCell, for: indexPath) as! EmployeeTableCell
        cell.setValue(data: arrDataEmployee[indexPath.row])
        return cell
    }
    
}
