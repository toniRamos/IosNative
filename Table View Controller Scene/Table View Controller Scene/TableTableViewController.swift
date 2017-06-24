//
//  TableTableViewController.swift
//  Table View Controller Scene
//
//  Created by Antonio on 24/6/17.
//  Copyright © 2017 DevApplication. All rights reserved.
//

import UIKit

class TableTableViewController: UITableViewController {
    //Atributos globales
    var listaCoches:[Coche] = []; //Array de objetos tipo coche
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Simulamos que conectamos a la bbdd y obtenemos la informacion de todos los coches almacenados
        //Vehiculo 1
        let coche:Coche = Coche(modelo: "Ford Fiesta 2009 TDI 1.9", fechaMatriculacion: "24/09/2009", precio : 4500, foto:"ford.png");
        
        listaCoches.append(coche);
        
        //Vehiculo 2
        let coche2:Coche = Coche(modelo: "Toyota yaris", fechaMatriculacion: "14/05/2015", precio : 1000, foto:"yaris.jpg");
        
        listaCoches.append(coche2);
        
        
        //Vehiculo 3
        let coche3:Coche = Coche(modelo: "Peugetot 208", fechaMatriculacion: "24/09/2009", precio : 4500, foto:"peugeot.jpg");
        
        listaCoches.append(coche3);
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listaCoches.count;
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        //1º obtener el objeto correspondiente a la celda que estamos montado
        let coche:Coche = listaCoches[indexPath.row];
        
        //2ºCreamos un objeto que represente a nuestra celda indicando el nombre de identificacion introducido en el storyboard.
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellCoche", for: indexPath) as! TableViewCell;
                
        //3º Rellenar los datos de la celda, ( poner valor )
        cell.txtModelo.text = coche.modelo;
        cell.txtPrecio.text = "\(coche.precio)€";
        cell.txtMatriculacion.text = coche.fechaMatriculacion;
        cell.imgView.image = UIImage(named: coche.foto);

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
