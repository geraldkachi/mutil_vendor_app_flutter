List<dynamic> categories = [
  {
    "_id": "1",
    "title": "Fried Rice",
    "value": "fried_rice",
    "imageUrl": "https://picsum.photos/200/300",
    "createdAt": "2024-04-22",
    "updatedAt": "2024-04-22",
    "__v": 0
  },
  {
    "_id": "2",
    "title": "Curry",
    "value": "curry",
    "imageUrl": "https://picsum.photos/200/300",
    "createdAt": "2024-04-22",
    "updatedAt": "2024-04-22",
    "__v": 0
  },
  {
    "_id": "3",
    "title": "Pizza",
    "value": "pizza ",
    "imageUrl": "https://picsum.photos/200/300",
    "createdAt": "2024-04-22",
    "updatedAt": "2024-04-22",
    "__v": 0
  },
  {
    "_id": "4",
    "title": "Chicken",
    "value": "chicken",
    "imageUrl": "https://picsum.photos/200/300",
    "createdAt": "2024-04-22",
    "updatedAt": "2024-04-22",
    "__v": 0
  },
  {
    "_id": "5",
    "title": "More",
    "value": "more",
    "imageUrl": "https://picsum.photos/200/300",
    "createdAt": "2024-04-22",
    "updatedAt": "2024-04-22",
    "__v": 0
  },
];

List<dynamic> restaurants = [
  {
    "_id": "1",
    "title": "Pizza",
    "time": "6:00am - 9:00pm",
    "imageUrl": "https://fastly.picsum.photos/id/242/200/300.jpg?hmac=_v7qaiV_fwDB3NP9lpirq7rMvS10u8lHjqMYNmmXya4",
    "owner": "Lord Gerald kachi",
    "code": "1213",
    "logoUrl": "https://fastly.picsum.photos/id/564/200/300.jpg?hmac=GML84ZsOUsd0_XLIMleR9RvRFT8-pojH0AwU7tRHoCg",
    "rating": 5,
    "ratingCount": "150",
    "coords": {
      "id": "0",
      "latitude": 37.41235345,
      "longitude": -122.3546361346346,
      "address": "Lagos Est Greenland Street",
      "title": "Lagos Est",
      "latitudeDelta": 0.0211,
      "longitudeDelta": 0.3872,
    }
  }
];

List<Map<String, dynamic>> foods = [
  {
    "_id": "0",
    "title": "Tiramisu",
    "foodTags": ["Italian", "Dessert", "Coffee", "Mascarphone", "Cocoa"],
    "foodType": ["Tiramisu"],
    "code": "1234",
    "isAvailable": true,
    "restaurant": "34523453543",
    "rating": 4.9,
    "ratingCount": "150",
    "description":
        "A classification Italian dessert made of layers of coffee-soaked ladyfinger",
    "price": 7.24,
    "additives": [
      {"id": 1, "title": "LadyFinger", "price": 1.00},
      {"id": 2, "title": "Coffee", "price": 1.50},
      {"id": 2, "title": "Masc", "price": 2.00}
    ],
  }
];

const cart = [
  {
    "_id": "0",
    "userId": "0",
    "productId": {
      "_id": "21434314243",
      "title": "Tiramisu Pizza",
      "restaurants": 'qwrr',
      "restaurant": "34523453543",
      "rating": 4.9,
      "imageUrl": ["https://picsum.photos/200/300", "https://picsum.photos/200/300"],
    },
    "imageUrl": "https://picsum.photos/200/300",
    "additives": ['Extra cheese', 'Mushrooms'],
    "instructions": ''
  }
];

const profile = [
  {
    "id": "0",
    "username": "OluwaGerald",
    "email": "fitzgeraldkachi@gmail.com",
    "uuid": "1323546263456245645723462",
    "address": [],
    "userType": "Vendor",
    "profile": "https://picsum.photos/200/300",
    "updatedAt": "2015-12-22"
  }
];

const choicesList = [
  {
    "id",
    1,
    "name",
    "Pick Up",
    "value",
    "pick up",
  },
  {
    "id",
    2,
    "name",
    "4 Star",
    "value",
    "4star",
  }
];
