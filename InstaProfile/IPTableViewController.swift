//
//  IPTableViewController.swift
//  InstaProfile
//
//  Created by Prasanna Pegu on 30/01/16.
//  Copyright © 2016 Prasanna Pegu. All rights reserved.
//

import UIKit

/// Primary View Controller for InstaProfile
class IPTableViewController: UITableViewController {
	
	// MARK: Properties
	@IBOutlet weak var segmentedControl: UISegmentedControl!
	@IBOutlet weak var feedContainerView: UIView! /// Container for FeedTableView
	@IBOutlet weak var imageCollectionContainerView: UIView! /// Container for ImageCollectionView
	
	// MARK: Initialization
	override func viewDidLoad() {
		super.viewDidLoad()
		segmentedControl.addTarget(self, action: "segmentWasClicked:", forControlEvents: UIControlEvents.ValueChanged)
	}
	
	override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
		return 1
	}
	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 3
	}
	
	
	// MARK: Actions
	/// Method will hide or show a particular container as per the selected segment index
	func segmentWasClicked(sender: UISegmentedControl) {
		switch sender.selectedSegmentIndex {
		case 0:
			feedContainerView.hidden = false
			imageCollectionContainerView.hidden = true
		case 1:
			imageCollectionContainerView.hidden = false
			feedContainerView.hidden = true
		default:
			print("Default")
		}
	}
}



