//
//  ShoppingTableViewController.swift
//  AssignmentTabelView
//
//  Created by Jae hyung Kim on 1/5/24.
//

//import UIKit
//
//class ShoppingTableViewController: UITableViewController {
//    @IBOutlet var navLabelTextUILabel: UILabel!
//    
//    
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        DesignNavLabelTextLabel(uiLabel: navLabelTextUILabel)
//       
//    }
//    
//    // MARK: - 네비는 아닌것 디자인
//    func DesignNavLabelTextLabel( uiLabel : UILabel) {
//        uiLabel.text = "쇼핑"
//        uiLabel.font = .boldSystemFont(ofSize: 16)
//        uiLabel.textAlignment = .center
//    }
//    // MARK: - 섹션은 몇개 ?
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
//    
//    // MARK: - 섹션 안 셀 몇개?
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if section == 0 {
//            return 1
//        }
//        return 4
//    }
//    
//    // MARK: 셀 높이는 얼마냐?
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.section == 0 {
//            return 80
//        }
//        return 40
//    }
//    // MARK: - 셀 디자인은?
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingTableViewCell", for: indexPath)
//        cell.tintColor = .blue
//        
//        if indexPath.section == 0 {
//            cell.textLabel?.text = "무엇을 구매하실 건가요?"
//            cell.backgroundColor = .clear
//            cell.selectionStyle = .
//            cell.textLabel?.textColor = .systemGray3
//            cell.contentView.backgroundColor = .systemGray5
//            cell.contentView.layer.cornerRadius = 10
//            cell.contentView.layer.masksToBounds = true
//        }
//        
//        
//        return cell
//        
//    }
//
//    // MARK: - 테이블뷰 스타일을 Plain -> Group 이나 뭐 바꾸려했으나
//    // 스토리보드에서 생성한것을 수정할순 없다 라고 하네요 코드로
//    // 코드로 생성했다면 가능 했는데 호호
//}
//
//
//
//
///*
//override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    // 반환 값은 테이블 뷰 셀
//        // 매개변수 테이블 뷰를 이용하면 되겠네요
//    let cell = tableView.dequeueReusableCell(withIdentifier: "ShoppingTableViewCell", for: indexPath)
//    
//        
//    if indexPath.section == 0 {
//        cell.textLabel?.text = "무엇을 구매하실 건가요?"
//        cell.textLabel?.textColor = .systemGray3
//        cell.backgroundColor = UIColor.systemGray5
//        // 이처럼 셀에 대해 원래에서 수정해서 다시 반납하는 구조라면
//        // 아마 버튼도 만들고 반납해서 할수 있을 듯
//        // UIButton (타입: ) 설명을 보면 크리에트 거시기 즉 만든다.
//        let addButton = UIButton(type: .system )
//        addButton.setTitle("추가", for: .normal)
//        addButton.backgroundColor = .lightGray
//        
//        // 버튼이 안보임 이런....
//        addButton.isHidden = false
//        
//        // 혹시 스토리 보드에서 악세서리가 none으로 되었어서?
//        // 검정 부분이 보이지 않음.
//        //cell.accessoryView?.backgroundColor = .black
//        
//        
//        // MARK: = 버튼 크기 문제였다...
//        // 버튼 크기가 쪼만한가?
////            addButton.frame = CGRect(x: 0, y: 0, width: 50, height: 30)
////
//        // 버튼 추가를 해도 이상하다. 뭔가 다른 접근이 필요해 보인다
//        
//        cell.accessoryView = addButton
//    } else {
//        
//    }
//    return cell
//    
//}
//*/
