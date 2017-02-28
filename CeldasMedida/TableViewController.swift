//
//  TableViewController.swift
//  CeldasMedida
//
//  Created by Miguel Cuellar on 2/27/17.
//  Copyright © 2017 Miguel Cuellar. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
     var arrDiccionarios : NSArray!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Productos"
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        arrDiccionarios = NSArray(contentsOfFile: path!)


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
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrDiccionarios.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> CeldaTableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! CeldaTableViewCell
        let dic = arrDiccionarios[indexPath.row] as! NSDictionary
        cell.TFTipo.text = (dic.value(forKey: "tipo") as? String)!
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        
        let precio = (dic.value(forKey: "precio") as? NSNumber)!
        cell.TFPrecio.text = formatter.string(from: precio)
        cell.TFCapacidad.text = dic.value(forKey: "capacidad") as? String
        let sUrl = dic.value(forKey: "urlFoto") as? String
        let nsurl = URL(string: sUrl!)
        let imagenData = NSData(contentsOf: nsurl!)
        cell.ImagenFoto.image = UIImage(data: imagenData as! Data)

        // Configure the cell...

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
