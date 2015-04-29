category1_options = {name: "Automotive"}
category2_options = {name: "Electronics"}
category3_options = {name: "Housing"}
category4_options = {name: "Tickets"}
category5_options = {name: "Personals"}



Category.create(category1_options)
Category.create(category2_options)
Category.create(category3_options)
Category.create(category4_options)
Category.create(category5_options)


article1_options = {  name: "Chevy",
                   price: 100.00,
                   description: "This is my old Chevy",
                   email: "tom.zellner@gmail.com",
                   url: "www.google.com",
                   category_id: 1,}

Article.create(article1_options)
