//
//  RecipeCell.swift
//  GoodEatins2
//
//  Created by Naoki Arakawa on 2019/03/14.
//  Copyright © 2019 Naoki Arakawa. All rights reserved.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    
    
    @IBOutlet weak var recipeImage: UIImageView!
    
    //ViewDidLoadのようなもの
    override func awakeFromNib() {
        
        //親クラスの処理が完了したタイミングでこの中に書かれた処理が行われる
        super.awakeFromNib()
        recipeImage.layer.cornerRadius = 10
    }
    
    func configureCell(recipe: Recipe) {
        
        recipeImage.image = UIImage(named: recipe.imageName)
        
    }
    
}
