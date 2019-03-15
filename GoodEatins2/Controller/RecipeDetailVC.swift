//
//  RecipeDetailVC.swift
//  GoodEatins2
//
//  Created by Naoki Arakawa on 2019/03/14.
//  Copyright © 2019 Naoki Arakawa. All rights reserved.
//

import UIKit

class RecipeDetailVC: UIViewController {
    
    
    @IBOutlet weak var recipeImg: UIImageView!
    
    @IBOutlet weak var recipeTitle: UILabel!
    
    @IBOutlet weak var recipeInstructions: UILabel!
    
    var selectedRecipe: Recipe!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeImg.image = UIImage(named: selectedRecipe.imageName)
        recipeTitle.text =  selectedRecipe.title
        recipeInstructions.text =  selectedRecipe.instructions

    }
    
}
