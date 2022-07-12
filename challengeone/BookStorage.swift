//
//  BookStorage.swift
//  challengeone
//
//  Created by Marco Celestino on 07/07/22.
//

import Foundation

let kDidUpdateBookStorageNotification = NSNotification.Name(rawValue: "DidUpdateBookStorage")

//This class is in charge of fetch books from network and save to DB when it is initialized. Use dependency injection to avoid singleton reference in the view controllers.

class BookStorage {

	init(networkManager: NetworkManager = .shared) {

		//Get books from Network and save them on local DB
		networkManager.getBooks(for: .comic) { books in
			self.saveBooks(books: books)

			//Post a notification to notify that books are ready to be fetched from DB
			NotificationCenter.default.post(name: kDidUpdateBookStorageNotification,
											object: nil)
		}

	}

	private func saveBooks(books: [Book]) {
		// Save on DB
	}

	func fetchBooks() -> [Book] {
		// Fetch from DB

		return [Book]() //book fetched from DB
	}
}
