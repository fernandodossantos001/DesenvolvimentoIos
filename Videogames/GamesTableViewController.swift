//
//  GamesTableViewController.swift
//  Videogames
//
//  Created by Usuário Convidado on 26/04/19.
//  Copyright © 2019 Usuário Convidado. All rights reserved.
//

import UIKit

struct Hero{
    let name : String
    let power : String
}

class GamesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad();
        loadGames();

    }
    
    var games:[Game] = [];
    
    func loadGames(){
        
        if let url = Bundle.main.url(forResource: "console", withExtension: "json"){
            //url.absoluteString
            
            do{
                
            
                let data = try Data(contentsOf: url)
                games = try JSONDecoder().decode([Game].self, from: data)
                tableView.reloadData();
            }catch{
                print(error);
            }
            
        }
        
    }

 
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return games.count;
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath);
        
        let game = games[indexPath.row];
        cell.textLabel?.text = game.name;
        cell.detailTextLabel?.text = game.manufacturer;
        
        return cell;
    }

}
