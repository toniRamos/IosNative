//
//  Coche.swift
//  Table View Controller Scene
//
//  Created by Antonio on 24/6/17.
//  Copyright © 2017 DevApplication. All rights reserved.
//

import UIKit

class Coche: NSObject {
    //PROPERTIES
    var modelo:String;
    var fechaMatriculacion:String;
    var precio:Int;
    var foto:String;
    
    //Funciones de inicialización
    init(modelo:String,fechaMatriculacion:String,precio:Int,foto:String){
        self.modelo = modelo;
        self.fechaMatriculacion = fechaMatriculacion;
        self.precio = precio;
        self.foto = foto;
    }
    
    
}
