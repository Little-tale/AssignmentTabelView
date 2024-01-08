//
//  ShoppingListTableViewController.swift
//  AssignmentTabelView
//
//  Created by Jae hyung Kim on 1/8/24.
//

import UIKit

struct ShoppingCellStruct {
    var text: String
    var Cheackbool: Bool
    var starBool: Bool
}

class ShoppingListTableViewController: UITableViewController {
    // MARK: - 헤더 디자인
    @IBOutlet var NavTextLabel: UILabel!
    @IBOutlet var backView: UIView!
    @IBOutlet var headerTextField: UITextField!
    @IBOutlet var headerButton: UIButton!
    
    let checkBoxImages = ["checkmark.square.fill","checkmark.square"]
    let starImage = ["star.fill","star"]
    
    var shoppingList: [ShoppingCellStruct] = [
        ShoppingCellStruct(text: "추가버튼을 눌러서", Cheackbool: false, starBool:false),
        ShoppingCellStruct(text: "목록을 만들어 보세요", Cheackbool: false, starBool:false),
        ShoppingCellStruct(text: "봄에 아이패드 에어 시리즈", Cheackbool: false, starBool:false),
        ShoppingCellStruct(text: "M3 탑재 소문이..!?", Cheackbool: false, starBool:false) ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        designHeader()
      
    }
    func designHeader(){
        designNavText()
        designBackView()
        designHeaderTextField()
        designHeaderButton()
    }
    
    func designNavText() {
        NavTextLabel.font = .boldSystemFont(ofSize: 20)
        NavTextLabel.text = "쇼핑"
    }
    func designBackView() {
        backView.backgroundColor = .systemGray6
        backView.layer.cornerRadius = 10
    }
    func designHeaderTextField() {
        headerTextField.placeholder = "무엇을 구매하실 건가요?"
        headerTextField.backgroundColor = .clear
        headerTextField.borderStyle = .none
    }
    func designHeaderButton() {
        //headerButton.isUserInteractionEnabled = true
        headerButton.clipsToBounds = true
        headerButton.backgroundColor = .systemGray5
        headerButton.setTitle("추가", for: .normal)
        headerButton.layer.cornerRadius = 10
        headerButton.titleLabel?.font = .systemFont(ofSize: 16)
        headerButton.setTitleColor(UIColor.black, for: .normal)
    }

    // MARK: - Table view data source

    // MARK: - 섹션 몇개?
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    // MARK: - 셀 몇개?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return shoppingList.count
    }
    // MARK: - 셀 디자인
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingListTableViewCell", for: indexPath) as! ShoppingListTableViewCell
    
        
        cell.listTextLabel.text = shoppingList[ indexPath.row].text
        cell.listTextLabel.font = .systemFont(ofSize: 14)
        
        cell.cellBackView.backgroundColor = .systemGray6
        cell.cellBackView.layer.cornerRadius = 10
        // 체크박스
        let image = shoppingList[indexPath.row].Cheackbool ? "checkmark.square.fill" : "checkmark.square"
        print("셀디자인/이미지 세팅 --- ",shoppingList[indexPath.row].Cheackbool )
        cell.checkBoxButton.tag = indexPath.row
        
        cell.checkBoxButton.setImage(UIImage(systemName: image) , for: .normal)
        cell.checkBoxButton.addTarget(self, action: #selector( changeCheck ), for: .touchUpInside)
        
        // 즐겨찾기
        let starImage = shoppingList[indexPath.row].starBool ? "star.fill": "star"
        cell.starButton.setImage(UIImage(systemName: starImage), for: .normal)
        cell.starButton.addTarget(self, action: #selector(changeStar), for: .touchUpInside)
        
        return cell
    }
    
    
    // MARK: - 셀 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }

    @objc func changeCheck(sender : UIButton){
        print(sender.tag)
        shoppingList[sender.tag].Cheackbool.toggle()
        print(shoppingList[sender.tag])
        tableView.reloadRows(at: [IndexPath(row: sender.tag, section: 0) ], with: .fade)
    }
    
    @objc func changeStar(sender : UIButton) {
        shoppingList[sender.tag].starBool.toggle()
        tableView.reloadRows(at: [IndexPath(row: sender.tag, section: 0)], with: .fade)
    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
        let text = headerTextField.text!
        
        if text != "" {
            shoppingList.append(ShoppingCellStruct(text: text, Cheackbool: false ,starBool:false))
        }
        
        tableView.reloadData()
    }
    
    
    
    
}
