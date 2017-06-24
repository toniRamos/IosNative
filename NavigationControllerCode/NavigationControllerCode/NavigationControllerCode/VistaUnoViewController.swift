//
//  VistaUnoViewController.swift
//  NavigationControllerCode
//
//  Created by Antonio on 12/6/17.
//  Copyright © 2017 DevApplication. All rights reserved.
//

import UIKit

class VistaUnoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func verVista2(_ sender: Any) {
        
        //Creamos el objeto llamado vista2 que representa a la vista que queremos navegar del storyboard, en este caso aquella vista ocn identificacón vista2
        let vista2:VistaDosViewController = self.storyboard?.instantiateViewController(withIdentifier: "vista2") as! VistaDosViewController;
        
        //Ahora seleccionamos el navigation controller y con la funcion pushViewController añadimos una vista de forma animada. En este caso añadimos la vista2 creada anteriormente.
        self.navigationController?.pushViewController(vista2, animated: true);
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
