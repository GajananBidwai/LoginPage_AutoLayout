//
//  LoginTableViewController.swift
//  LoginPage_AutoLayout_By_YogechPatel
//
//  Created by Mac on 07/02/24.
//

import UIKit

class LoginTableViewController: UITableViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
   
    @IBAction func btnLoginClicked(_ sender: UIButton) {
        if let email = txtEmail.text , let password = txtPassword.text{
            if !email.validateEmailId(){
                openAlert(title: "Alert", message: "Email Address Not Found", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                    print("Okay Clicked")
                }])
            }else if !password.validateEmailId(){
                openAlert(title: "Alert", message: "Please Enter Valid Password", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                    print("Okay Clicked")
                }])
            }else{
                //navigation - Home Screen
            }
        }else{
            openAlert(title: "Alert", message: "Please Add Detail", alertStyle: .alert, actionTitles: ["Okay"], actionStyles: [.default], actions: [{ _ in
                print("Okay Clicked")
            }])
        }
    }
    
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        <#code#>
//    }
    
    // this code is used for make the content at center in iPad
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let tabelViewHeight = self.tableView.frame.height
        let contentHeight = self.tableView.contentSize.height
        
        let centeringInset = (tabelViewHeight - contentHeight) / 2.0
        let topInset = max(contentHeight, 0.0)
        
        self.tableView.contentInset = UIEdgeInsets(top: topInset, left: 0.0, bottom: 0.0, right: 0.0)
    }
    

}
