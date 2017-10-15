//
//  ViewController.swift
//  TMS
//
//  Created by Phanindra purighalla on 15/10/17.
//  Copyright © 2017 Aarna Solutions Inc. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = URL(string: "http://localhost:8080/customer")!
        
        let params: [String: String] = ["firstName" : "firstName2",
                                        "emailId" : "fname2.lname2@domain.com",
                                        "lastName" : "lastName2",
                                        "contactNo" : "277551190",
                                        "dateOfBirth" : "1982-02-27",
                                        "pinCode" : "500012"]
        let headers: [String: String] = ["Content-Type" : "application/json"]
        
        
        Alamofire.request(url, method: .post, parameters: params, encoding: JSONEncoding.default, headers: headers).validate(statusCode: 200..<600).responseJSON() { response in
            
            print ("Response: \(response)")
            switch response.result {
            case .success:
                
                var result = [String:String]()
                
                if let value = response.result.value {
                    
                    //let json = JSON(value)
                    
                }
                
            case .failure(let error):
                print("RESPONSE ERROR: \(error)")
                
            }
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

