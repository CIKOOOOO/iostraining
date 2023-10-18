//
//  EmployeeTableCell.swift
//  Day2
//
//  Created by P090MMCTSE016 on 18/10/23.
//

import UIKit

class EmployeeTableCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblSalary: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setValue(data: Employee){
        lblName.text = data.employee_name
        lblAge.text = "Age: \(data.employee_age)"
        lblSalary.text = "Salary: \(data.employee_salary)"
    }
}
