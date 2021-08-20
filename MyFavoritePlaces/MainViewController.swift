//
//  MainViewController.swift
//  MyFavoritePlaces
//
//  Created by Леся on 20.08.2021.
//

import UIKit

class MainViewController: UITableViewController {
    
    let restaurantNames = [
        "Burger King", "Kitchen", "Якитория", "Дастархан", "Чирчик", "X.O", "Балкан Гриль", "Sherlock Holmes", "Speak Easy", "Morris Pub", "Вкусные истории", "Классик", "Love&Life", "Шок", "Бочка"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = restaurantNames[indexPath.row]
        cell.imageView?.image = UIImage.init(named: restaurantNames[indexPath.row])
        
        return cell
    }
    
    //MARK: - Navigation
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }*/
    
}
