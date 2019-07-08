//
//  Dataservice.swift
//  MVC_edmo
//
//  Created by Ngoc on 7/8/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit

class DataService{
    static let shareIntance: DataService = DataService()
    
    var people = [
        Person(name: "Nguyen van tuan", phone: 023564648, image: UIImage(named: "1")!),
        Person(name: "Nguyen van nam", phone: 023564648, image: UIImage(named: "1")!),
        Person(name: "Nguyen van hung", phone: 023564648, image: UIImage(named: "1")!),
        Person(name: "Nguyen van thieu", phone: 023564648, image: UIImage(named: "1")!),
    ]
    
}
