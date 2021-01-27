

Title : User registration
URL : http://localhost/itask/api/registration

parametors : 
email:jayesh@gmail.com
first_name:jyas
last_name:s
contact:7657675765
password:123456
address:nashik

REsponse
{
    "success": true,
    "data": {
        "id": "4",
        "first_name": "jyas",
        "last_name": "s",
        "address": "nashik",
        "email": "jayesh@gmail.com",
        "contact": "7657675765"
    },
    "message": "Registration done Successfully."
}

===================================================================

Title : get product list
URL : http://localhost/itask/api/get_product_list?user_id=2

parametors :  
user_id:2

REsponse
{
    "success": true,
    "data": [],
    "message": "Product list.",
    "product_list": [
        {
            "id": "2",
            "name": "test",
            "description": "description",
            "category_id": "1",
            "image": "uploads/products/b977f637693944ba6c82a9666d9ad6dd.jpg",
            "sku": "sku68868686",
            "price": "554"
        }
    ]
}



===================================================================

Title : get Category list
URL : http://localhost/itask/api/get_categories_list

parametors :   

REsponse
{"success":true,"category_list":[{"id":"1317","title":"Commercial Catering Equipment","slug":"commercial-catering-equipment","description":null,"icon":"fas fa-newspaper"},{"id":"1312","title":"Medical, Mobility, Disability Assistance Products","slug":"medical-mobility-disability-assistance-products","description":null,"icon":"fas fa-newspaper"},{"id":"845","title":"Dating\/Friendship","slug":"datingfriendship","description":null,"icon":"fas fa-newspaper"},{"id":"844","title":"Home & Garden","slug":"home-garden","description":null,"icon":"fas fa-newspaper"},{"id":"837","title":"Drinks","slug":"drinks","description":null,"icon":"fas fa-newspaper"},{"id":"822","title":"Financial \/ Legal Services","slug":"financial-legal-services","description":null,"icon":"fas fa-newspaper"},{"id":"748","title":"Events and Parties","slug":"events-and-parties","description":null,"icon":"fas fa-newspaper"},{"id":"582","title":"Christmas Items","slug":"christmas-items","description":null,"icon":"fas fa-newspaper"},{"id":"289","title":"Businesses Ad","slug":"businesses-ad","description":null,"icon":"fas fa-newspaper"},{"id":"187","title":"Weddings","slug":"weddings","description":null,"icon":"fas fa-newspaper"},{"id":"181","title":"Tuition","slug":"tuition","description":null,"icon":"fas fa-newspaper"},{"id":"169","title":"Property","slug":"property","description":null,"icon":"fas fa-newspaper"},{"id":"163","title":"Jewellery and Watches","slug":"jewellery-and-watches","description":null,"icon":"fas fa-newspaper"},{"id":"159","title":"DIY Products and Building Materials","slug":"diy-products-and-building-materials","description":null,"icon":"fas fa-newspaper"},{"id":"141","title":"Electronics","slug":"electronics","description":null,"icon":"fas fa-newspaper"},{"id":"139","title":"Photography and Video Services","slug":"photography-and-video-services","description":null,"icon":"fas fa-newspaper"},{"id":"137","title":"Electronic Games","slug":"electronic-games","description":null,"icon":"fas fa-newspaper"},{"id":"129","title":"Animals and Pets","slug":"animals-and-pets","description":null,"icon":"fas fa-newspaper"},{"id":"97","title":"Sports\/Hobbies\/Leisure","slug":"sportshobbiesleisure","description":null,"icon":"fas fa-newspaper"},{"id":"78","title":"Holidays\/Travel","slug":"holidaystravel","description":null,"icon":"fas fa-newspaper"},{"id":"75","title":"Business, Office and Industrial","slug":"business-office-and-industrial","description":null,"icon":"fas fa-newspaper"},{"id":"73","title":"Toys and Games","slug":"toys-and-games","description":null,"icon":"fas fa-newspaper"},{"id":"18","title":"Health and Beauty","slug":"health-and-beauty","description":null,"icon":"fas fa-newspaper"},{"id":"16","title":"Baby and Toddler Equipment","slug":"baby-and-toddler-equipment","description":null,"icon":"fas fa-newspaper"},{"id":"14","title":"Fashion","slug":"fashion","description":null,"icon":"fas fa-newspaper"},{"id":"6","title":"Vehicles","slug":"vehicles","description":null,"icon":"fas fa-newspaper"},{"id":"4","title":"Tradespeople","slug":"tradespeople","description":null,"icon":"fas fa-newspaper"},{"id":"3","title":"Jobs","slug":"jobs","description":null,"icon":"fas fa-newspaper"},{"id":"1","title":"Antiques, Art and Collectables","slug":"antiques-art-and-collectables","description":null,"icon":"fas fa-newspaper"}],"message":"Category list."}


 
========================================================================================


Title : get subCategory list
URL : http://localhost/itask/api/get_subcategories_list?category_id=6

parametors :   
category_id:6


REsponse 
{
    "success": true,
    "category_list": [
        {
            "id": "1325",
            "title": "Garage Equipment",
            "parent_id": "6",
            "slug": "garage-equipment",
            "description": null,
            "icon": "fas fa-newspaper"
        },
        {
            "id": "1303",
            "title": "Trailers",
            "parent_id": "6",
            "slug": "trailers",
            "description": null,
            "icon": "fas fa-newspaper"
        },
        {
            "id": "1280",
            "title": "Vehicle Hire and Leasing",
            "parent_id": "6",
            "slug": "vehicle-hire-and-leasing",
            "description": null,
            "icon": "fas fa-newspaper"
        },
        {
            "id": "1279",
            "title": "Vehicle Parts and Accessories",
            "parent_id": "6",
            "slug": "vehicle-parts-and-accessories",
            "description": null,
            "icon": "fas fa-newspaper"
        },
        {
            "id": "1195",
            "title": "Caravans/Campervans/Motorhomes",
            "parent_id": "6",
            "slug": "caravanscampervansmotorhomes",
            "description": null,
            "icon": "fas fa-newspaper"
        },
        {
            "id": "836",
            "title": "Horse Boxes",
            "parent_id": "6",
            "slug": "horse-boxes",
            "description": null,
            "icon": "fas fa-newspaper"
        },
        {
            "id": "830",
            "title": "Agricultural Vehicles",
            "parent_id": "6",
            "slug": "agricultural-vehicles",
            "description": null,
            "icon": "fas fa-newspaper"
        },
        {
            "id": "166",
            "title": "Commercial Vehicles",
            "parent_id": "6",
            "slug": "commercial-vehicles",
            "description": null,
            "icon": "fas fa-newspaper"
        },
        {
            "id": "15",
            "title": "ATV",
            "parent_id": "6",
            "slug": "atv",
            "description": null,
            "icon": "fas fa-newspaper"
        },
        {
            "id": "7",
            "title": "Motorcycles and Scooters",
            "parent_id": "6",
            "slug": "motorcycles-and-scooters",
            "description": null,
            "icon": "fas fa-newspaper"
        },
        {
            "id": "2",
            "title": "Cars",
            "parent_id": "6",
            "slug": "cars",
            "description": null,
            "icon": "fas fa-newspaper"
        }
    ],
    "message": "SubCategory list."
}
 
========================================================================================

