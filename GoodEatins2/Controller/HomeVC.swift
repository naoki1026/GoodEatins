//
//  ViewController.swift
//  GoodEatins
//
//  Created by Naoki Arakawa on 2019/03/14.
//  Copyright © 2019 Naoki Arakawa. All rights reserved.
//

import UIKit

//1.テーブルを使用するためには、UITableViewDelegateとUITableViewDataSourceの２つを指定してあげる必要がある
class HomeVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //3.tableViewに関する変数を定義してあげる必要がある
   
    @IBOutlet weak var tableView: UITableView!
    
    
    //DataSetクラスのインスタンス
    let data = DataSet()
    var categoryToPass : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //4.viewControllerがtableViewのデリゲートを提供するということを定義している
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    //2.デリゲートメソッドとして必ず定義しなければいけないもの
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //配列categoriesに入っている要素を数える
        return data.categories.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for:indexPath) as? CategoryCell {
            
            cell.configureCell(category: data.categories[indexPath.row])
            
            return cell
            
        }
        
        return UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    //セルが選択された場合に発動する
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        categoryToPass = data.categories[indexPath.row].title
        performSegue(withIdentifier: "toRecipesSelection", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let recipesVC = segue.destination as? RecipesSelectionVC {
            
            recipesVC.selectedCategory = categoryToPass
        }
    }
    
    
}

