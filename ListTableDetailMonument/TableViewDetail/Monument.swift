//
//  Monument.swift
//  TableViewDetail
//
//  Created by Antonio on 24/6/17.
//  Copyright © 2017 DevApplication. All rights reserved.
//

import UIKit

class Monument: NSObject {
    var nombre:String;
    var image:String;
    var web:String;
    
    init(nombre:String,image:String,web:String) {
        self.nombre = nombre;
        self.image = image;
        self.web = web;
    }
    
}
