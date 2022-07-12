//
//  ViewController.swift
//  challengeone
//
//  Created by Marco Celestino on 07/07/22.
//

import UIKit

class ViewController: UIViewController {

	let storage = BookStorage()

	override func viewDidLoad() {
		super.viewDidLoad()

		//Add observer to handle BookStorage updates.
		NotificationCenter.default.addObserver(self, selector: #selector(updateUI), name: kDidUpdateBookStorageNotification, object: nil)
	}

	@objc func updateUI() {
		// Reload view controller, table view / collection, etc...
		// ...
	}
}
