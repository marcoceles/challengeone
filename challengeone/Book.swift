//
//  Book.swift
//  challengeone
//
//  Created by Marco Celestino on 07/07/22.
//

import Foundation

//Deleted subclass 'ComicBook'. Now Book has a new property 'genre' to define his Genre.
struct Book {
	var isbn: String?
	var title: String?
	var author: String?
	var genre: BookGenre?
}
