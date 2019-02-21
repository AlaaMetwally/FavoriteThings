//
//  ViewController.swift
//  FavoriteThings
//
//  Created by Geek on 1/8/19.
//  Copyright © 2019 Geek. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let favoriteThings = [
        "Raindrops on roses",
        "Whiskers on kittens",
        "Bright copper kettles",
        "Warm woolen mittens"
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.favoriteThings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteThingCell")!
        let favoriteThingForRow = self.favoriteThings[(indexPath as NSIndexPath).row]
        cell.textLabel?.text = favoriteThingForRow
        return cell
    }
}

