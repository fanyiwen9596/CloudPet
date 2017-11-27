//
//  BackyardViewController.swift
//  Instagram
//
//  Created by Yidi Fan on 11/27/17.
//  Copyright © 2017 Katie Jiang. All rights reserved.
//

import Foundation
import UIKit
import Parse
import ParseUI

class BackyardViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var StoreButton: UIButton!
    @IBOutlet weak var MypetButton: UIButton!
    @IBOutlet weak var LikedpetButton: UIButton!
    @IBOutlet weak var moneyTextfield: UITextField!
    
    let user : PFUser = PFUser.current()!
    
    @IBAction func onRefresh(_ sender: UIButton) {
        var pet_id = user["pet_id"] as? String
        if(pet_id != nil ){
            MypetButton.isHidden=false;
        }
        
  
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var pet_id = user["pet_id"] as? String
        MypetButton.isHidden=true;
        print("hi");
        print(pet_id);
        print("pet_id");

        
        
        if(pet_id != nil ){
            MypetButton.isHidden=false;
        }
        
    }
          /*
        // Set default field values
        nameField.text = user["name"] as? String
        usernameField.text = user["username"] as? String
        bioField.text = user["bio"] as? String
        petnumField.text = user["petnum"] as? String //NEW CODE
        
        let profilePicture = user["profilePicture"] as? PFFile
        profileImageView.file = profilePicture
        profileImageView.loadInBackground()
    }*/
    
    
    
    
    
    
    
    
    
    
    
    
}
