//
//  RecipieModel.swift
//  RecipeSaver
//
//  Created by Daphne Wu on 8/23/22.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable { //bc each recipe will be unique
    let id = UUID() //  universally unique identifier generates a random string identifier
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue //will read the string of case and not case itself
    let datePublished: String
    let url: String
}

//Extensions allow you to add methods to existing types, to make them do things they weren’t originall designed to do.
extension Recipe {
    //              type
    static let all: [Recipe] = [
    
        Recipe(
            name: "Korean Cold noodles (Mul-naengmyeon)",
            image: "https://www.maangchi.com/wp-content/uploads/2008/06/mulnaengweb.jpg",
            description: "Korean icy cold noodles (naengmyeon: 냉면) are one of my favorite things to make all year ‘round, even in the cold winter. I can’t resist the texture of the chewy and thin noodles, no matter if they are served with cold broth (mul-naengmyeon: 물냉면) or in a spicy sauce (bibim-naengmyeon: 비빔냉면).",
            ingredients: "10 ounces (280 grams) dried naengmyeon noodles\n2 packets of liquid or powdered concentrated broth that comes with the package of naengmyeon noodles\n2 packets of mustard oil that comes with the package of naengmyeon noodles.\n½ English cucumber, cut into thin strips\n1 Korean pear (or 2 bosc pears)\n½ teaspoon kosher salt/n1½ teaspoon sugar\n1 tablespoon white or apple cider vinegar\n1 hard-boiled egg, cut in halves\n2 tablespoons toasted sesame seeds, ground ice cubes",
            directions: "1) Make broth /nOpen the packets of the concentrated broth and put them into a bowl. Mix with 4 cups of water. Keep in the freezer for 4 to 5 hours so it gets slushy.brothIf you can’t make the broth in advance, make the broth with only 2 cups of water and add 2½ cups of ice cubes. Keep it in the fridge while you prepare everything else, and take it out just when you’re ready to serve. \n 2) Prepare cucumber and pear garnishes\nMake quick pickled cucumbers by combining the sliced cucumber, kosher salt, ½ teaspoon sugar, and vinegar in a bowl. Mix it well and set aside. Make sugar water by mixing 1 cup of water and 1 teaspoon sugar. Peel the pear and slice into halves. Slice one half into thin strips and soak them in the sugar water to keep them from going brown. Grate the other half of the pear and squeeze out the juice using a cotton cloth or cheesecloth. You should get about ½ cup of pear juice. If you use small bosc pears, use one for garnish and the other for pear juice. Take the bowl of broth out of the freezer. Squeeze some cucumber brine into the broth and add the pear juice.pear juice Mix well and put the broth back in the fridge or freezer until the noodles are ready.\n3) Prepare noodles\nBring a large pot of water to a boil. Add the noodles and stir with a wooden spoon. Cover and let them cook for 3 to 5 minutes.Take a sample to taste. When you chew the noodles, there shouldn’t be any hard stuff inside. Be sure not to overcook them or they’ll go soggy.Strain and rinse the noodles in cold running water until they aren’t slippery any more and are well cooled.naengmyeon noodles Fill a large bowl with cold water and some ice cubes. Add the noodles and rinse them a final time. Drain the noodles and divide them into 2 large shallow bowls. Put it together and enjoy :).",
            category: "Main",
            datePublished: "July 27, 2016",
            url: "https://www.maangchi.com/recipe/naengmyeon"
        ),
        Recipe(
            name: "Banana Bread",
            image: "https://www.simplyrecipes.com/thmb/carFI0aWFEzqQkZcWXiMozHXY30=/648x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Easy-Banana-Bread-LEAD-2-66837beab63c495292d89743c6767171.jpg",
            description: "Put those ripe bananas to use in the best banana bread recipe ever. Moist and delicious, it's easy to make—one bowl, no need for a mixer!",
            ingredients: "2 to 3 medium (7 to 7-7/8 long) very ripe bananas, peeled (about 1 1/4 to 1 1/2 cups mashed)\n1/3 cup (76g) butter, unsalted or salted, melted\n1/2 teaspoon baking soda (not baking powder)\n1 pinch salt\n3/4 cup (150g) sugar (1/2 cup if you would like it less sweet, 1 cup if more sweet)\n1 large egg, beaten\n1 teaspoon vanilla extract\n1 1/2 cups (205g) all-purpose flour",
            directions: "1)Preheat the oven and prepare the pan: Preheat the oven to 350°F (175°C), and butter an 8 x 4-inch loaf pan.\n2) Mash the bananas and add the butter: In a mixing bowl, mash the ripe bananas with a fork until completely smooth. Stir the melted butter into the mashed bananas. \n3) Mix in the remaining ingredients: Mix in the baking soda and salt. Stir in the sugar, beaten egg, and vanilla extract. Mix in the flour.\n4) Bake the bread: Pour the batter into your prepared loaf pan. Bake for 55 to 65 minutes at 350°F (175°C), or until a toothpick or wooden skewer inserted into the center comes out clean. A few dry crumbs are okay; streaks of wet batter are not. If the outside of the loaf is browned but the center is still wet, loosely tent the loaf with foil and continue baking until the loaf is fully baked. \n5) Cool and serve: Remove from oven and let cool in the pan for a few minutes. Then remove the banana bread from the pan and let cool completely before serving. Slice and serve. (A bread knife helps to make slices that aren't crumbly.) Wrapped well, the banana bread will keep at room temperature for 4 days. For longer storage, refrigerate the loaf up to 5 days, or freeze it.",
            category: "Dessert",
            datePublished: "April 23, 2022",
            url: "https://www.simplyrecipes.com/recipes/banana_bread/"
        ),
        Recipe(
            name: "Korean Cold noodles (Mul-naengmyeon)",
            image: "https://www.maangchi.com/wp-content/uploads/2008/06/mulnaengweb.jpg",
            description: "Korean icy cold noodles (naengmyeon: 냉면) are one of my favorite things to make all year ‘round, even in the cold winter. I can’t resist the texture of the chewy and thin noodles, no matter if they are served with cold broth (mul-naengmyeon: 물냉면) or in a spicy sauce (bibim-naengmyeon: 비빔냉면).",
            ingredients: "10 ounces (280 grams) dried naengmyeon noodles\n2 packets of liquid or powdered concentrated broth that comes with the package of naengmyeon noodles\n2 packets of mustard oil that comes with the package of naengmyeon noodles.\n½ English cucumber, cut into thin strips\n1 Korean pear (or 2 bosc pears)\n½ teaspoon kosher salt/n1½ teaspoon sugar\n1 tablespoon white or apple cider vinegar\n1 hard-boiled egg, cut in halves\n2 tablespoons toasted sesame seeds, ground ice cubes",
            directions: "1) Make broth /nOpen the packets of the concentrated broth and put them into a bowl. Mix with 4 cups of water. Keep in the freezer for 4 to 5 hours so it gets slushy.brothIf you can’t make the broth in advance, make the broth with only 2 cups of water and add 2½ cups of ice cubes. Keep it in the fridge while you prepare everything else, and take it out just when you’re ready to serve. \n 2) Prepare cucumber and pear garnishes\nMake quick pickled cucumbers by combining the sliced cucumber, kosher salt, ½ teaspoon sugar, and vinegar in a bowl. Mix it well and set aside. Make sugar water by mixing 1 cup of water and 1 teaspoon sugar. Peel the pear and slice into halves. Slice one half into thin strips and soak them in the sugar water to keep them from going brown. Grate the other half of the pear and squeeze out the juice using a cotton cloth or cheesecloth. You should get about ½ cup of pear juice. If you use small bosc pears, use one for garnish and the other for pear juice. Take the bowl of broth out of the freezer. Squeeze some cucumber brine into the broth and add the pear juice.pear juice Mix well and put the broth back in the fridge or freezer until the noodles are ready.\n3) Prepare noodles\nBring a large pot of water to a boil. Add the noodles and stir with a wooden spoon. Cover and let them cook for 3 to 5 minutes.Take a sample to taste. When you chew the noodles, there shouldn’t be any hard stuff inside. Be sure not to overcook them or they’ll go soggy.Strain and rinse the noodles in cold running water until they aren’t slippery any more and are well cooled.naengmyeon noodles Fill a large bowl with cold water and some ice cubes. Add the noodles and rinse them a final time. Drain the noodles and divide them into 2 large shallow bowls. Put it together and enjoy :).",
            category: "Main",
            datePublished: "July 27, 2016",
            url: "https://www.maangchi.com/recipe/naengmyeon"
        ),
        Recipe(
            name: "Banana Bread",
            image: "https://www.simplyrecipes.com/thmb/carFI0aWFEzqQkZcWXiMozHXY30=/648x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Easy-Banana-Bread-LEAD-2-66837beab63c495292d89743c6767171.jpg",
            description: "Put those ripe bananas to use in the best banana bread recipe ever. Moist and delicious, it's easy to make—one bowl, no need for a mixer!",
            ingredients: "2 to 3 medium (7 to 7-7/8 long) very ripe bananas, peeled (about 1 1/4 to 1 1/2 cups mashed)\n1/3 cup (76g) butter, unsalted or salted, melted\n1/2 teaspoon baking soda (not baking powder)\n1 pinch salt\n3/4 cup (150g) sugar (1/2 cup if you would like it less sweet, 1 cup if more sweet)\n1 large egg, beaten\n1 teaspoon vanilla extract\n1 1/2 cups (205g) all-purpose flour",
            directions: "1)Preheat the oven and prepare the pan: Preheat the oven to 350°F (175°C), and butter an 8 x 4-inch loaf pan.\n2) Mash the bananas and add the butter: In a mixing bowl, mash the ripe bananas with a fork until completely smooth. Stir the melted butter into the mashed bananas. \n3) Mix in the remaining ingredients: Mix in the baking soda and salt. Stir in the sugar, beaten egg, and vanilla extract. Mix in the flour.\n4) Bake the bread: Pour the batter into your prepared loaf pan. Bake for 55 to 65 minutes at 350°F (175°C), or until a toothpick or wooden skewer inserted into the center comes out clean. A few dry crumbs are okay; streaks of wet batter are not. If the outside of the loaf is browned but the center is still wet, loosely tent the loaf with foil and continue baking until the loaf is fully baked. \n5) Cool and serve: Remove from oven and let cool in the pan for a few minutes. Then remove the banana bread from the pan and let cool completely before serving. Slice and serve. (A bread knife helps to make slices that aren't crumbly.) Wrapped well, the banana bread will keep at room temperature for 4 days. For longer storage, refrigerate the loaf up to 5 days, or freeze it.",
            category: "Dessert",
            datePublished: "April 23, 2022",
            url: "https://www.simplyrecipes.com/recipes/banana_bread/"
        ),
        Recipe(
            name: "Banana Bread",
            image: "https://www.simplyrecipes.com/thmb/carFI0aWFEzqQkZcWXiMozHXY30=/648x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Easy-Banana-Bread-LEAD-2-66837beab63c495292d89743c6767171.jpg",
            description: "Put those ripe bananas to use in the best banana bread recipe ever. Moist and delicious, it's easy to make—one bowl, no need for a mixer!",
            ingredients: "2 to 3 medium (7 to 7-7/8 long) very ripe bananas, peeled (about 1 1/4 to 1 1/2 cups mashed)\n1/3 cup (76g) butter, unsalted or salted, melted\n1/2 teaspoon baking soda (not baking powder)\n1 pinch salt\n3/4 cup (150g) sugar (1/2 cup if you would like it less sweet, 1 cup if more sweet)\n1 large egg, beaten\n1 teaspoon vanilla extract\n1 1/2 cups (205g) all-purpose flour",
            directions: "1)Preheat the oven and prepare the pan: Preheat the oven to 350°F (175°C), and butter an 8 x 4-inch loaf pan.\n2) Mash the bananas and add the butter: In a mixing bowl, mash the ripe bananas with a fork until completely smooth. Stir the melted butter into the mashed bananas. \n3) Mix in the remaining ingredients: Mix in the baking soda and salt. Stir in the sugar, beaten egg, and vanilla extract. Mix in the flour.\n4) Bake the bread: Pour the batter into your prepared loaf pan. Bake for 55 to 65 minutes at 350°F (175°C), or until a toothpick or wooden skewer inserted into the center comes out clean. A few dry crumbs are okay; streaks of wet batter are not. If the outside of the loaf is browned but the center is still wet, loosely tent the loaf with foil and continue baking until the loaf is fully baked. \n5) Cool and serve: Remove from oven and let cool in the pan for a few minutes. Then remove the banana bread from the pan and let cool completely before serving. Slice and serve. (A bread knife helps to make slices that aren't crumbly.) Wrapped well, the banana bread will keep at room temperature for 4 days. For longer storage, refrigerate the loaf up to 5 days, or freeze it.",
            category: "Dessert",
            datePublished: "April 23, 2022",
            url: "https://www.simplyrecipes.com/recipes/banana_bread/"
        ),
        Recipe(
            name: "Banana Bread",
            image: "https://www.simplyrecipes.com/thmb/carFI0aWFEzqQkZcWXiMozHXY30=/648x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Easy-Banana-Bread-LEAD-2-66837beab63c495292d89743c6767171.jpg",
            description: "Put those ripe bananas to use in the best banana bread recipe ever. Moist and delicious, it's easy to make—one bowl, no need for a mixer!",
            ingredients: "2 to 3 medium (7 to 7-7/8 long) very ripe bananas, peeled (about 1 1/4 to 1 1/2 cups mashed)\n1/3 cup (76g) butter, unsalted or salted, melted\n1/2 teaspoon baking soda (not baking powder)\n1 pinch salt\n3/4 cup (150g) sugar (1/2 cup if you would like it less sweet, 1 cup if more sweet)\n1 large egg, beaten\n1 teaspoon vanilla extract\n1 1/2 cups (205g) all-purpose flour",
            directions: "1)Preheat the oven and prepare the pan: Preheat the oven to 350°F (175°C), and butter an 8 x 4-inch loaf pan.\n2) Mash the bananas and add the butter: In a mixing bowl, mash the ripe bananas with a fork until completely smooth. Stir the melted butter into the mashed bananas. \n3) Mix in the remaining ingredients: Mix in the baking soda and salt. Stir in the sugar, beaten egg, and vanilla extract. Mix in the flour.\n4) Bake the bread: Pour the batter into your prepared loaf pan. Bake for 55 to 65 minutes at 350°F (175°C), or until a toothpick or wooden skewer inserted into the center comes out clean. A few dry crumbs are okay; streaks of wet batter are not. If the outside of the loaf is browned but the center is still wet, loosely tent the loaf with foil and continue baking until the loaf is fully baked. \n5) Cool and serve: Remove from oven and let cool in the pan for a few minutes. Then remove the banana bread from the pan and let cool completely before serving. Slice and serve. (A bread knife helps to make slices that aren't crumbly.) Wrapped well, the banana bread will keep at room temperature for 4 days. For longer storage, refrigerate the loaf up to 5 days, or freeze it.",
            category: "Dessert",
            datePublished: "April 23, 2022",
            url: "https://www.simplyrecipes.com/recipes/banana_bread/"
        ),
        Recipe(
            name: "Banana Bread",
            image: "https://www.simplyrecipes.com/thmb/carFI0aWFEzqQkZcWXiMozHXY30=/648x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Easy-Banana-Bread-LEAD-2-66837beab63c495292d89743c6767171.jpg",
            description: "Put those ripe bananas to use in the best banana bread recipe ever. Moist and delicious, it's easy to make—one bowl, no need for a mixer!",
            ingredients: "2 to 3 medium (7 to 7-7/8 long) very ripe bananas, peeled (about 1 1/4 to 1 1/2 cups mashed)\n1/3 cup (76g) butter, unsalted or salted, melted\n1/2 teaspoon baking soda (not baking powder)\n1 pinch salt\n3/4 cup (150g) sugar (1/2 cup if you would like it less sweet, 1 cup if more sweet)\n1 large egg, beaten\n1 teaspoon vanilla extract\n1 1/2 cups (205g) all-purpose flour",
            directions: "1)Preheat the oven and prepare the pan: Preheat the oven to 350°F (175°C), and butter an 8 x 4-inch loaf pan.\n2) Mash the bananas and add the butter: In a mixing bowl, mash the ripe bananas with a fork until completely smooth. Stir the melted butter into the mashed bananas. \n3) Mix in the remaining ingredients: Mix in the baking soda and salt. Stir in the sugar, beaten egg, and vanilla extract. Mix in the flour.\n4) Bake the bread: Pour the batter into your prepared loaf pan. Bake for 55 to 65 minutes at 350°F (175°C), or until a toothpick or wooden skewer inserted into the center comes out clean. A few dry crumbs are okay; streaks of wet batter are not. If the outside of the loaf is browned but the center is still wet, loosely tent the loaf with foil and continue baking until the loaf is fully baked. \n5) Cool and serve: Remove from oven and let cool in the pan for a few minutes. Then remove the banana bread from the pan and let cool completely before serving. Slice and serve. (A bread knife helps to make slices that aren't crumbly.) Wrapped well, the banana bread will keep at room temperature for 4 days. For longer storage, refrigerate the loaf up to 5 days, or freeze it.",
            category: "Dessert",
            datePublished: "April 23, 2022",
            url: "https://www.simplyrecipes.com/recipes/banana_bread/"
        ),
        Recipe(
            name: "Banana Bread",
            image: "https://www.simplyrecipes.com/thmb/carFI0aWFEzqQkZcWXiMozHXY30=/648x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/Simply-Recipes-Easy-Banana-Bread-LEAD-2-66837beab63c495292d89743c6767171.jpg",
            description: "Put those ripe bananas to use in the best banana bread recipe ever. Moist and delicious, it's easy to make—one bowl, no need for a mixer!",
            ingredients: "2 to 3 medium (7 to 7-7/8 long) very ripe bananas, peeled (about 1 1/4 to 1 1/2 cups mashed)\n1/3 cup (76g) butter, unsalted or salted, melted\n1/2 teaspoon baking soda (not baking powder)\n1 pinch salt\n3/4 cup (150g) sugar (1/2 cup if you would like it less sweet, 1 cup if more sweet)\n1 large egg, beaten\n1 teaspoon vanilla extract\n1 1/2 cups (205g) all-purpose flour",
            directions: "1)Preheat the oven and prepare the pan: Preheat the oven to 350°F (175°C), and butter an 8 x 4-inch loaf pan.\n2) Mash the bananas and add the butter: In a mixing bowl, mash the ripe bananas with a fork until completely smooth. Stir the melted butter into the mashed bananas. \n3) Mix in the remaining ingredients: Mix in the baking soda and salt. Stir in the sugar, beaten egg, and vanilla extract. Mix in the flour.\n4) Bake the bread: Pour the batter into your prepared loaf pan. Bake for 55 to 65 minutes at 350°F (175°C), or until a toothpick or wooden skewer inserted into the center comes out clean. A few dry crumbs are okay; streaks of wet batter are not. If the outside of the loaf is browned but the center is still wet, loosely tent the loaf with foil and continue baking until the loaf is fully baked. \n5) Cool and serve: Remove from oven and let cool in the pan for a few minutes. Then remove the banana bread from the pan and let cool completely before serving. Slice and serve. (A bread knife helps to make slices that aren't crumbly.) Wrapped well, the banana bread will keep at room temperature for 4 days. For longer storage, refrigerate the loaf up to 5 days, or freeze it.",
            category: "Dessert",
            datePublished: "April 23, 2022",
            url: "https://www.simplyrecipes.com/recipes/banana_bread/"
        ),
    ]
}
