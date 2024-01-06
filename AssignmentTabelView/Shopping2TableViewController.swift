//
//  Shopping2TableViewController.swift
//  AssignmentTabelView
//
//  Created by Jae hyung Kim on 1/6/24.
//

import UIKit

class Shopping2TableViewController: UITableViewController {
    // MARK: - 네비 부분 아웃렛
    @IBOutlet var navLabel: UILabel!
    @IBOutlet var addButton: UIButton!
    @IBOutlet var textField: UITextField!
    @IBOutlet var searchUiView: UIView!
    
    // MARK: - 테이블뷰 아웃렛
    // 셀안에 UIView는 여기서 설정을 못하는것 같은데...?
    // @IBOutlet var cellBackUIView: UIView!
    
    
    
    
    // MARK: - 리스트들
    var list = ["추가버튼을 눌러서","목록을 만들어보세요","봄에 아이패드 에어 시리즈","M3 탑재 소문이...!"]
    
    let checkBoxImages = ["checkmark.square.fill","checkmark.square"]
    let starImage = ["star.fill","star"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        design()
        
    }
    
    func design(){
        designNavLabel()
        designAddButton()
        designTextField()
        designSearchView()
    }
    func designSearchView(){
        searchUiView.backgroundColor = .systemGray6
        searchUiView.layer.cornerRadius = 8
    }
    
    func designNavLabel(){
        navLabel.text = "쇼핑"
    }
    func designAddButton(){
        // 반복되는데 줄여볼까?
        // cancleButton.titleLabel?
        
        guard let buttonTitle =  addButton.titleLabel else {
            print("캔슬 버튼 인스턴스화 실패")
            return
        }
        
        buttonTitle.text = "추가"
        buttonTitle.font = .systemFont(ofSize: 14)
        buttonTitle.textAlignment = .center
        //buttonTitle.tintColor = .black
        //buttonTitle.textColor = .black
        addButton.backgroundColor = .systemGray5
        //addButton.tintColor = .black
        
        // 버그 인지는 모르겠으나 스토리 보드에서 글자색을 설정을 하면
        // 안바뀐다. 왜지?
        addButton.setTitle("추가", for: .normal)
        addButton.setTitleColor(.black, for: .normal)
        
        addButton.clipsToBounds = true
        addButton.layer.cornerRadius = 8
    }
    
    func designTextField() {
        textField.isUserInteractionEnabled = true
        textField.placeholder = "무엇을 구매하실 건가요?"
        // textField.backgroundColor = .systemGray6
        textField.borderStyle = .none
        textField.layer.cornerRadius = 8
        
    }
    
   
    
    
    
    // MARK: - 테이블뷰 세팅
    
    // MARK: - 섹션이 몇개인가
    
    
    // MARK: - 셀이 몇개인가?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    // MARK: - 셀 높이가 몇인가?
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    // MARK: - 셀 디자인이 어떻게 되는가?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Shopping2TableViewCell", for: indexPath) as! Shopping2TableViewCell
        
        // cell.listLabel.text = list[indexPath]
        cell.listLabel.text = list[indexPath.row]
        return cell
    }
    
}
