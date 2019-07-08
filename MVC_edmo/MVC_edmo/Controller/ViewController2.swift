//
//  ViewController2.swift
//  MVC_edmo
//
//  Created by Ngoc on 7/8/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var textName: UITextField!
    @IBOutlet weak var textPhone: UITextField!
    @IBOutlet weak var detailImage: UIImageView!{
        didSet{
            if detailImage == nil {
                detailImage.image = UIImage(named: "noPhotoFound")
            }
        }
    }
    var detailPerson: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if detailPerson != nil{
            textName.text = detailPerson?.name
            textPhone.text = String(detailPerson!.phone)
            detailImage.image = detailPerson?.image
        }
        
    }
    

    @IBAction func onClickButton(_ sender: Any){
        NotificationCenter.default.post(name: .dataPerson, object: Person(name: textName.text!, phone: Int(textPhone.text!)! , image: detailImage.image ?? UIImage(named: "1")!))
        navigationController?.popViewController(animated: true)
    }
   
}
