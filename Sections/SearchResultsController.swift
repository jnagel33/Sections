//
//  SearchResultsController.swift
//  Sections
//
//  Created by Josh Nagel on 12/25/14.
//  Copyright (c) 2014 Apress. All rights reserved.
//

import UIKit

class SearchResultsController: UITableViewController, UISearchResultsUpdating {
    
    private let longNameSize = 6
    private let shortNameButtonIndex = 1
    private let longNameButtonIndex = 2
    
    let sectionTableIdentifier = "SectionsTableIdentifier"
    var names: [String: [String]] = [String: [String]]()
    var keys: [String] = []
    var filteredNames: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: sectionTableIdentifier)
        
        
    }
    
    // Mark: Search Results Updating conformance methods
    
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        let searchString = searchController.searchBar.text
        let buttonIndex = searchController.searchBar.selectedScopeButtonIndex
        filteredNames.removeAll(keepCapacity: true)
    }

}
