//
//  ViewController.swift
//  TableViewTest3
//
//  Created by Jadhwani, Prateek (TMP) on 9/28/17.
//  Copyright © 2017 Jadhwani, Prateek (TMP). All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    
    
    
    var data: [ThingsToDo] = [ThingsToDo]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        data = getThingsToDo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func getThingsToDo() -> [ThingsToDo]{
        let allTheThings = [
            ThingsToDo(thing: "Do Groceries", done: false),
            ThingsToDo(thing: "Refill Metro Card", done: false),
            ThingsToDo(thing: "Do Laundry", done: false)
        ]
        
        return allTheThings
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
        cell.textLabel?.text = data[indexPath.row].task
        cell.detailTextLabel?.text = String(data[indexPath.row].isDone)
        
        return cell
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        print(searchBar.text!)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        print(searchBar.text!)
    }
}

