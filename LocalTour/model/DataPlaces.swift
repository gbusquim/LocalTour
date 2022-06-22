//
//  DataPlaces.swift
//  LocalTour
//
//  Created by user221960 on 6/20/22.
//

import Foundation

class DataPlaces {
    static var places:[Place] = []
}

// let p0 = Place("id": 1, "name": "Restaurant 1", "description": "", "score": 0, "phoneNumber": "2122874358", "adress": "", "cnpj": 75910231953502, "owner": "Frederick Chopin", "userReviews": [], "imgName": "restaurants-big")
// let p1 = Place("id": 2, "name": "Restaurant 2", "description": "", "score": 0, "phoneNumber": "2124571876", "adress": "", "cnpj": 67450308621783, "owner": "Rebecca Taylor", "userReviews": [], "imgName": "restaurants-big")
// let p2 = Place("id": 3, "name": "Restaurant 3", "description": "", "score": 0, "phoneNumber": "2124541207", "adress": "", "cnpj": 37826292291713, "owner": "Eric Dryden", "userReviews": [], "imgName": "restaurants-big")
// let p3 = Place("id": 4, "name": "Shopping 4", "description": "", "score": 0, "phoneNumber": "2127212314", "adress": "", "cnpj": 42355623454268, "owner": "Rebecca Taylor", "userReviews": [], "imgName": "shopping-cart-big")
// let p4 = Place("id": 5, "name": "Accomodation 5", "description": "", "score": 0, "phoneNumber": "21997302185", "adress": "", "cnpj": 68097651546579, "owner": "Margaret Lutz", "userReviews": [], "imgName": "bed-big")
// let p5 = Place("id": 6, "name": "Shopping 6", "description": "", "score": 0, "phoneNumber": "2123571015", "adress": "", "cnpj": 63264344898690, "owner": "Louise Park", "userReviews": [], "imgName": "shopping-cart-big")
// let p6 = Place("id": 7, "name": "Restaurant 7", "description": "", "score": 0, "phoneNumber": "2127165039", "adress": "", "cnpj": 80208263926603, "owner": "Beverly Mccreight", "userReviews": [], "imgName": "restaurants-big")
// let p7 = Place("id": 8, "name": "Accomodation 8", "description": "", "score": 0, "phoneNumber": "21998495429", "adress": "", "cnpj": 74138033468171, "owner": "Frederick Chopin", "userReviews": [], "imgName": "bed-big")
// let p8 = Place("id": 9, "name": "Restaurant 9", "description": "", "score": 0, "phoneNumber": "2121567219", "adress": "", "cnpj": 37408278760001, "owner": "Eric Dryden", "userReviews": [], "imgName": "restaurants-big")
// let p9 = Place("id": 0, "name": "Restaurant 10", "description": "", "score": 0, "phoneNumber": "21992700459", "adress": "", "cnpj": 78398907373915, "owner": "Rebecca Taylor", "userReviews": [], "imgName": "restaurants-big")
// let p10 = Place("id": 1, "name": "Restaurant 11", "description": "", "score": 0, "phoneNumber": "21993135304", "adress": "", "cnpj": 49324087434378, "owner": "Frederick Chopin", "userReviews": [], "imgName": "restaurants-big")
// let p11 = Place("id": 2, "name": "Shopping 12", "description": "", "score": 0, "phoneNumber": "21995909966", "adress": "", "cnpj": 74413856069982, "owner": "Louise Park", "userReviews": [], "imgName": "shopping-cart-big")
// let p12 = Place("id": 3, "name": "Shopping 13", "description": "", "score": 0, "phoneNumber": "21992982618", "adress": "", "cnpj": 53817214217003, "owner": "Louise Park", "userReviews": [], "imgName": "shopping-cart-big")
// let p13 = Place("id": 4, "name": "Accomodation 14", "description": "", "score": 0, "phoneNumber": "2125608809", "adress": "", "cnpj": 49107769996432, "owner": "Frederick Chopin", "userReviews": [], "imgName": "bed-big")
// let p14 = Place("id": 5, "name": "Shopping 15", "description": "", "score": 0, "phoneNumber": "2125676154", "adress": "", "cnpj": 88381726578887, "owner": "Beverly Mccreight", "userReviews": [], "imgName": "shopping-cart-big")
// let p15 = Place("id": 6, "name": "Restaurant 16", "description": "", "score": 0, "phoneNumber": "2128505485", "adress": "", "cnpj": 60280819262973, "owner": "Eric Dryden", "userReviews": [], "imgName": "restaurants-big")
// let p16 = Place("id": 7, "name": "Restaurant 17", "description": "", "score": 0, "phoneNumber": "21994771265", "adress": "", "cnpj": 55259581565315, "owner": "Maria da Silva", "userReviews": [], "imgName": "restaurants-big")
// let p17 = Place("id": 8, "name": "Shopping 18", "description": "", "score": 0, "phoneNumber": "21998149203", "adress": "", "cnpj": 58328247084111, "owner": "Rebecca Taylor", "userReviews": [], "imgName": "shopping-cart-big")
// let p18 = Place("id": 9, "name": "Shopping 19", "description": "", "score": 0, "phoneNumber": "21992906565", "adress": "", "cnpj": 52755001277770, "owner": "Marie Curie", "userReviews": [], "imgName": "shopping-cart-big")
// let p19 = Place("id": 0, "name": "Accomodation 20", "description": "", "score": 0, "phoneNumber": "21996553024", "adress": "", "cnpj": 79449847973714, "owner": "Margaret Lutz", "userReviews": [], "imgName": "bed-big")
// let p20 = Place("id": 1, "name": "Restaurant 21", "description": "", "score": 0, "phoneNumber": "21992220424", "adress": "", "cnpj": 89800772490546, "owner": "Beverly Mccreight", "userReviews": [], "imgName": "restaurants-big")
// let p21 = Place("id": 2, "name": "Shopping 22", "description": "", "score": 0, "phoneNumber": "2121726993", "adress": "", "cnpj": 91660517163816, "owner": "Maria da Silva", "userReviews": [], "imgName": "shopping-cart-big")

// DataPlaces.places.append(p0)
// DataPlaces.places.append(p1)
// DataPlaces.places.append(p2)
// DataPlaces.places.append(p3)
// DataPlaces.places.append(p4)
// DataPlaces.places.append(p5)
// DataPlaces.places.append(p6)
// DataPlaces.places.append(p7)
// DataPlaces.places.append(p8)
// DataPlaces.places.append(p9)
// DataPlaces.places.append(p10)
// DataPlaces.places.append(p11)
// DataPlaces.places.append(p12)
// DataPlaces.places.append(p13)
// DataPlaces.places.append(p14)
// DataPlaces.places.append(p15)
// DataPlaces.places.append(p16)
// DataPlaces.places.append(p17)
// DataPlaces.places.append(p18)
// DataPlaces.places.append(p19)
// DataPlaces.places.append(p20)
// DataPlaces.places.append(p21)

