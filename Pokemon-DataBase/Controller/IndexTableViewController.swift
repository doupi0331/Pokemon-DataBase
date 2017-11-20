//
//  IndexTableViewController.swift
//  Pokemon-DataBase
//
//  Created by Yi-Yun Chen on 2017/11/19.
//  Copyright © 2017年 Yi-Yun Chen. All rights reserved.
//

import UIKit

class IndexTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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
        return POKEMONS.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PokemonTableViewCell", for: indexPath) as? PokemonTableViewCell {
            
            let pokemon = POKEMONS[indexPath.row]
            cell.createCell(pokemon: pokemon)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pokemon = POKEMONS[indexPath.row]
        
        performSegue(withIdentifier: "PokemonDetail", sender: pokemon)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailTableViewController {
            if let pokemon = sender as? Pokemon {
                destination.pokemon = pokemon
            }
        }
    }
    

}
