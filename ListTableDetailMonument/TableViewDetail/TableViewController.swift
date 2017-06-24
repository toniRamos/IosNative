//
//  TableViewController.swift
//  TableViewDetail
//
//  Created by Antonio on 24/6/17.
//  Copyright © 2017 DevApplication. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var listaMonumentos:[Monument] = [];
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let monu1:Monument = Monument(nombre: "Ciudad de las Artes y las Ciencias", image: "valencia.jpg", web:"https://es.wikipedia.org/wiki/Ciudad_de_las_Artes_y_las_Ciencias");
        
        listaMonumentos.append(monu1);
        
        let monu2:Monument = Monument(nombre: "Torre Eiffel", image: "eiffel_tower.jpg", web:"https://es.wikipedia.org/wiki/Torre_Eiffel");
        
        listaMonumentos.append(monu2);
        
        let monu3:Monument = Monument(nombre: "Sagrada familia", image: "sagradaFamilia.jpg", web:"https://es.wikipedia.org/wiki/Templo_Expiatorio_de_la_Sagrada_Familia");
        
        listaMonumentos.append(monu3);
        
        
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
        return listaMonumentos.count;
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        let cell:MonumentoTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MonumentoTableViewCell;
    
        //1º Obtener el objeto del array correspondiente a la fila de la celda que estamos montando.
        let monumento:Monument = listaMonumentos[indexPath.row];
        
        //2º Rellenar la informacion de los outlets
        cell.txtTitulo.text = monumento.nombre;
        cell.foto.image = UIImage(named: monumento.image);
        
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
    
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //1º Obtener el número de la celda que he seleccionado
        let indexPath = self.tableView.indexPathForSelectedRow;
        
        //2º Obtener el objeto correspondiente del array a mostrar en el detalle según la fila seleccionada
        let monumento:Monument = listaMonumentos[(indexPath!.row)];
        
        //3º Obtener la vista destino del segue
        let detailView:DetalleViewController = segue.destination as! DetalleViewController;
        
        //4º Asignar este objeto del array a la variable globar de la vista detalle
        detailView.monumento = monumento;
        
    }
}
