//
//  SettingScreenTableViewController.swift
//  AssignmentTabelView
//
//  Created by Jae hyung Kim on 1/5/24.
//

import UIKit

class SettingScreenTableViewController: UITableViewController {
    var settingAllTextList = ["공지사항", "개인 설정", "기타"]
    var settingPersonalTextList = ["개인/보안", "알림", "채팅"]
    var settingEtcTextList = ["고객센터", "도움말"]

    // // // // // // // // // // // // //
    
    var SectionNameList = ["전체설정","개인설정","기타"]
    
    var sectionNameDic = [0:"전체설정",1:"개인설정",2:"기타"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    
    
    // 섹션 갯수
    override func numberOfSections(in tableView: UITableView) -> Int {
        print("섹션 갯수 함수")
        return SectionNameList.count
    }
    
    // 섹션별 이름
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        print("section")
        //return "Test"
        
        // 리스트에 담아 라스트팝 하려 했으나
        // 라스트에 팝 한게 남아있는것을 보니 이페이지가
        // 계속 반복 되는것으로 판단됨 Dic 으로 접근
        
        
        
    }
    
    // 셀 겟수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("셀 겟수 함수")
        return 5
    }

    // 셀 디자인 등
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingScreenTableViewCell", for: indexPath)
        
        print("셀 로우 엣 디자인 함수")
        cell.textLabel?.text = "TTT"
        cell.backgroundColor = .systemBlue
        return cell
    }
    
    // 셀 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print("셀 높이 함수 ")
        return 16
    }

    
    
}
