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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        cell.nameLabel.text = restaurantNames[indexPath.row]
        cell.imageOfPlace.image = UIImage.init(named: restaurantNames[indexPath.row])
        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
        cell.imageOfPlace.clipsToBounds = true
        
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
    //MARK: - Navigation
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }*/
    
}
