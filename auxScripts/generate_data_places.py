import random
from random import randint

geo_json = {
	"type": "FeatureCollection",
	"features":
        [
            {
            "type": "Feature",
            "properties": {
                "title": "Restaurant 1",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "restaurant-id#1"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-23.030405, -43.479075]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Restaurant 2",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "restaurant-id#2"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-23.030113, -43.475366]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Restaurant 3",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "restaurant-id#3"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-23.021095, -43.458732]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Shopping 4",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "shopping-id#4"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-23.010607, -43.453607]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Accomodation 5",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "accomodation-id#5"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-23.000416, -43.416852]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Shopping 6",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "shopping-id#6"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-23.000135, -43.380091]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Restaurant 7",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "restaurant-id#7"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.986949, -43.36858]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Accomodation 8",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "accomodation-id#8"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.884833, -43.227766]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Restaurant 9",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "restaurant-id#9"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.903375, -43.186466]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Restaurant 10",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "restaurant-id#10"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.909741, -43.221177]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Restaurant 11",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "restaurant-id#11"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.972475, -43.2033]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Shopping 12",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "shopping-id#12"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.973775, -43.205827]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Shopping 13",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "shopping-id#13"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.935024, -43.518246]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Accomodation 14",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "accomodation-id#14"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.96682, -43.231357]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Shopping 15",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "shopping-id#15"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.961865, -43.215135]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Restaurant 16",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "restaurant-id#16"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.940811, -43.176289]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Restaurant 17",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "restaurant-id#17"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.916374, -43.209337]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Shopping 18",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "shopping-id#18"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.92361, -43.229545]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Shopping 19",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "shopping-id#19"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.885643, -43.300395]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Accomodation 20",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "accomodation-id#20"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.877125, -43.33793]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Restaurant 21",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "restaurant-id#21"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.978448, -43.229669]
            }
        }, {
            "type": "Feature",
            "properties": {
                "title": "Shopping 22",
                "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
                "objectid": "shopping-id#22"
            },
            "geometry": {
                "type": "Point",
                "coordinates": [-22.935825, -43.174294]
            }
        }
    ]
}

# {
#     "type": "Feature",
#     "properties": {
#         "title": "Restaurant 1",
#         "imagefile": "http://hiculturearts.pastperfect-online.com/34250images/001/19300101.JPG",
#         "objectid": "restaurant-id#1"
#     },
#     "geometry": {
#         "type": "Point",
#         "coordinates": [-23.030405, -43.479075]
#     }
# }

# let p1 = Place(id: 1,name: "Armico 1", description: "Restaurant 1 e bom",score: 1,phoneNumber: "123",adress: "Rua b", imgTypePath: "restaurants-big")

owner_name_lst = [
    "Pablo Lavigne",
    "Maria da Silva",
    "Frederick Chopin",
    "Marie Curie",
    "Shawn Milton",
    "Louise Park",
    "Margaret Lutz",
    "Eric Dryden",
    "Beverly Mccreight",
    "Rebecca Taylor"
]

images = {
    "restaurant": "restaurants-big",
    "accomodation": "bed-big",
    "shopping": "shopping-cart-big"
}

if __name__ == '__main__':
    places = list()
    for c, place in enumerate(geo_json["features"]):
        phone = randint(21000000,30000000-1) if randint(0,1) == 0 else randint(991000000,999999999)
        properties = place["properties"]
        title = properties["title"]
        new_place = {
            "id": int(properties["objectid"][-1]),
            "name": title,
            "description": "",
            "score": 0,
            "phoneNumber": "21" + str(phone),
            "adress": "",
            "cnpj": randint(31408901000140, 92599766000152),
            "owner": random.choice(owner_name_lst),
            "userReviews": [],
            "imgName": images[title.split(" ")[0].lower()]
        }
        places.append(new_place)
    print(places)

    for c, place in enumerate(places):
        statement = "let p{} = Place{}".format(c, place)
        statement = statement.replace("{", "(")
        statement = statement.replace("}", ")")
        statement = statement.replace("\'", "\"")
        print(statement)

    for c in range(len(places)):
        statement = "DataPlaces.places.append(p{})".format(c)
        print(statement)

    ### RESULTS:
    # [{'id': 1, 'name': 'Restaurant 1', 'description': '', 'score': 0, 'phoneNumber': '2122874358', 'adress': '',
    #   'cnpj': 75910231953502, 'owner': 'Frederick Chopin', 'userReviews': [], 'imgName': 'restaurants-big'},
    #  {'id': 2, 'name': 'Restaurant 2', 'description': '', 'score': 0, 'phoneNumber': '2124571876', 'adress': '',
    #   'cnpj': 67450308621783, 'owner': 'Rebecca Taylor', 'userReviews': [], 'imgName': 'restaurants-big'},
    #  {'id': 3, 'name': 'Restaurant 3', 'description': '', 'score': 0, 'phoneNumber': '2124541207', 'adress': '',
    #   'cnpj': 37826292291713, 'owner': 'Eric Dryden', 'userReviews': [], 'imgName': 'restaurants-big'},
    #  {'id': 4, 'name': 'Shopping 4', 'description': '', 'score': 0, 'phoneNumber': '2127212314', 'adress': '',
    #   'cnpj': 42355623454268, 'owner': 'Rebecca Taylor', 'userReviews': [], 'imgName': 'shopping-cart-big'},
    #  {'id': 5, 'name': 'Accomodation 5', 'description': '', 'score': 0, 'phoneNumber': '21997302185', 'adress': '',
    #   'cnpj': 68097651546579, 'owner': 'Margaret Lutz', 'userReviews': [], 'imgName': 'bed-big'},
    #  {'id': 6, 'name': 'Shopping 6', 'description': '', 'score': 0, 'phoneNumber': '2123571015', 'adress': '',
    #   'cnpj': 63264344898690, 'owner': 'Louise Park', 'userReviews': [], 'imgName': 'shopping-cart-big'},
    #  {'id': 7, 'name': 'Restaurant 7', 'description': '', 'score': 0, 'phoneNumber': '2127165039', 'adress': '',
    #   'cnpj': 80208263926603, 'owner': 'Beverly Mccreight', 'userReviews': [], 'imgName': 'restaurants-big'},
    #  {'id': 8, 'name': 'Accomodation 8', 'description': '', 'score': 0, 'phoneNumber': '21998495429', 'adress': '',
    #   'cnpj': 74138033468171, 'owner': 'Frederick Chopin', 'userReviews': [], 'imgName': 'bed-big'},
    #  {'id': 9, 'name': 'Restaurant 9', 'description': '', 'score': 0, 'phoneNumber': '2121567219', 'adress': '',
    #   'cnpj': 37408278760001, 'owner': 'Eric Dryden', 'userReviews': [], 'imgName': 'restaurants-big'},
    #  {'id': 0, 'name': 'Restaurant 10', 'description': '', 'score': 0, 'phoneNumber': '21992700459', 'adress': '',
    #   'cnpj': 78398907373915, 'owner': 'Rebecca Taylor', 'userReviews': [], 'imgName': 'restaurants-big'},
    #  {'id': 1, 'name': 'Restaurant 11', 'description': '', 'score': 0, 'phoneNumber': '21993135304', 'adress': '',
    #   'cnpj': 49324087434378, 'owner': 'Frederick Chopin', 'userReviews': [], 'imgName': 'restaurants-big'},
    #  {'id': 2, 'name': 'Shopping 12', 'description': '', 'score': 0, 'phoneNumber': '21995909966', 'adress': '',
    #   'cnpj': 74413856069982, 'owner': 'Louise Park', 'userReviews': [], 'imgName': 'shopping-cart-big'},
    #  {'id': 3, 'name': 'Shopping 13', 'description': '', 'score': 0, 'phoneNumber': '21992982618', 'adress': '',
    #   'cnpj': 53817214217003, 'owner': 'Louise Park', 'userReviews': [], 'imgName': 'shopping-cart-big'},
    #  {'id': 4, 'name': 'Accomodation 14', 'description': '', 'score': 0, 'phoneNumber': '2125608809', 'adress': '',
    #   'cnpj': 49107769996432, 'owner': 'Frederick Chopin', 'userReviews': [], 'imgName': 'bed-big'},
    #  {'id': 5, 'name': 'Shopping 15', 'description': '', 'score': 0, 'phoneNumber': '2125676154', 'adress': '',
    #   'cnpj': 88381726578887, 'owner': 'Beverly Mccreight', 'userReviews': [], 'imgName': 'shopping-cart-big'},
    #  {'id': 6, 'name': 'Restaurant 16', 'description': '', 'score': 0, 'phoneNumber': '2128505485', 'adress': '',
    #   'cnpj': 60280819262973, 'owner': 'Eric Dryden', 'userReviews': [], 'imgName': 'restaurants-big'},
    #  {'id': 7, 'name': 'Restaurant 17', 'description': '', 'score': 0, 'phoneNumber': '21994771265', 'adress': '',
    #   'cnpj': 55259581565315, 'owner': 'Maria da Silva', 'userReviews': [], 'imgName': 'restaurants-big'},
    #  {'id': 8, 'name': 'Shopping 18', 'description': '', 'score': 0, 'phoneNumber': '21998149203', 'adress': '',
    #   'cnpj': 58328247084111, 'owner': 'Rebecca Taylor', 'userReviews': [], 'imgName': 'shopping-cart-big'},
    #  {'id': 9, 'name': 'Shopping 19', 'description': '', 'score': 0, 'phoneNumber': '21992906565', 'adress': '',
    #   'cnpj': 52755001277770, 'owner': 'Marie Curie', 'userReviews': [], 'imgName': 'shopping-cart-big'},
    #  {'id': 0, 'name': 'Accomodation 20', 'description': '', 'score': 0, 'phoneNumber': '21996553024', 'adress': '',
    #   'cnpj': 79449847973714, 'owner': 'Margaret Lutz', 'userReviews': [], 'imgName': 'bed-big'},
    #  {'id': 1, 'name': 'Restaurant 21', 'description': '', 'score': 0, 'phoneNumber': '21992220424', 'adress': '',
    #   'cnpj': 89800772490546, 'owner': 'Beverly Mccreight', 'userReviews': [], 'imgName': 'restaurants-big'},
    #  {'id': 2, 'name': 'Shopping 22', 'description': '', 'score': 0, 'phoneNumber': '2121726993', 'adress': '',
    #   'cnpj': 91660517163816, 'owner': 'Maria da Silva', 'userReviews': [], 'imgName': 'shopping-cart-big'}]
