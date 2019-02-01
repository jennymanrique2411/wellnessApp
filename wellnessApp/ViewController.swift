//
//  ViewController.swift
//  wellnessApp
//
//  Created by Jenny Manrique on 2019-01-31.
//  Copyright © 2019 Jenny Manrique. All rights reserved.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let ref = Database.database().reference()
        
        ref.child("someId/name").setValue("Jenny")
        ref.childByAutoId().setValue(["name":"Carolina", "role":"Admin", "age":"33"])
        ref.child("someId/name").observeSingleEvent(of: .value, with: {
            (snapshot) in
            let data = snapshot.value as? [String:Any]
        })
        
        ref.child("someId").removeValue()
        
    }


}

