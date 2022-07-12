//
//  NetworkManager.swift
//  challengeone
//
//  Created by Marco Celestino on 07/07/22.
//

import Foundation

class NetworkManager {
	static let shared = NetworkManager()

	private init() {
		// Setup ...
	}

	func getBooks(for genre: BookGenre, completion: ([Book]) -> Void) {
		//API to fetch book from network
		completion([Book]()) //Books fetched from network
	}
}
