//
//  CategoryCell.swift
//  GoodEatins
//
//  Created by Naoki Arakawa on 2019/03/14.
//  Copyright © 2019 Naoki Arakawa. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    
    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //角を丸くする
        categoryImg.layer.cornerRadius = 10
        
    }
    
    //関数の引数に構造体を指定することで、その構造体に定義されている値を使用することができる
    func configureCell(category: FoodCategory) {
        
        categoryImg.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }
}
