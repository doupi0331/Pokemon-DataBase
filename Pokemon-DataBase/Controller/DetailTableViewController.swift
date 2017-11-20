//
//  DetailTableViewController.swift
//  Pokemon-DataBase
//
//  Created by Yi-Yun Chen on 2017/11/19.
//  Copyright © 2017年 Yi-Yun Chen. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {

    @IBOutlet weak var titleItem: UINavigationItem!
    @IBOutlet weak var pokeImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var type1Label: UILabel!
    @IBOutlet weak var type2Label: UILabel!
    @IBOutlet weak var evolutionLabel: UILabel!
    
    private var _pokemon: Pokemon!
    
    var pokemon: Pokemon {
        get {
            return _pokemon
        }
        set {
            _pokemon = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let index = String(format: "%03d", pokemon.index)
        titleItem.title = "#\(index)"
        pokeImage.image = UIImage(named: "pm\(index)")
        nameLabel.text = pokemon.name
        evolutionLabel.text = pokemon.evolution
        if pokemon.types.count < 2 {
            type1Label.text = pokemon.types[0].rawValue
            type1Label.backgroundColor = GET_TYPE_COLOR(type: pokemon.types[0])
            type2Label.isHidden = true
        } else {
            type1Label.text = pokemon.types[0].rawValue
            type1Label.backgroundColor = GET_TYPE_COLOR(type: pokemon.types[0])
            type2Label.isHidden = false
            type2Label.text = pokemon.types[1].rawValue
            type2Label.backgroundColor = GET_TYPE_COLOR(type: pokemon.types[1])
        }
        
        tableView.delegate = self
        tableView.dataSource = self
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
        return pokemon.movement.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MovementTableViewCell", for: indexPath) as? MovementTableViewCell {
            
            let movement = pokemon.movement[indexPath.row]
            cell.createCell(movement: movement)
            
            return cell
        } else {
            return UITableViewCell()
        }
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
    
   

}
