//
//  SettingScreenTableViewController.swift
//  AssignmentTabelView
//
//  Created by Jae hyung Kim on 1/5/24.
//

import UIKit

class SettingScreenTableViewController: UITableViewController {
    // MARK: - 필드 (아웃렛)
    @IBOutlet var settingUILabel: UILabel!
    
    
    
// MARK: - 필드 구역
    
    var settingAllTextList = ["공지사항", "개인 설정", "기타"]
    //var settingAllTextDic = [0: "공지사항", 1: "개인 설정", 2: "기타"]
    
    var settingPersonalTextList = ["개인/보안", "알림", "채팅","멀티프로필"]
   // var settingPersonalTextDic = [0: "개인/보안",1: "알림",2: "채팅"]
    
    var settingEtcTextList = ["고객센터", "도움말"]
   // var settingEtcTextDic = [0: "고객센터", 1: "도움말"]
    
    // MARK: - 2차원 배열
    // // // // // // // // // // // // //
    
    var cellAllList : [[String]] = []
    
    // // // // // // // // // // // // //
    
    var SectionNameList = ["전체설정","개인설정","기타"]
    
    var sectionNameDic = [0:"전체설정",1:"개인설정",2:"기타"]
    
    // MARK: - 뷰 디드 로드
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 한번 2차원 배열로 해결해 보려고 한다.
        // 결국엔 섹션 -> 셀 구조이기 때문
        
        cellAllList = [settingAllTextList, settingPersonalTextList, settingEtcTextList]
        
        designSettingUILabel(settingUILabel)
        
        
    }

    
    
    // MARK: - 섹션 갯수 함수
    override func numberOfSections(in tableView: UITableView) -> Int {
        print("섹션 갯수 함수")
        return cellAllList.count
    }
    
    //  MARK: - 섹션별 이름
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        print("section")
        //return "Test"
        
        // 리스트에 담아 라스트팝 하려 했으나
        // 라스트에 팝 한게 남아있는것을 보니 이페이지가
        // 계속 반복 되는것으로 판단됨 Dic 으로 접근
        
        // 성공 딕셔너리가 답이다.
        return sectionNameDic[section]
        
        
    }
    
    // MARK: - 셀 겟수 함수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("셀 겟수 함수 : sec", section)
        print("셀 겟수 함수 : cell.[].count", cellAllList[section].count)
        
        return cellAllList[section].count
    }

    //  MARK: - 셀 디자인 등
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SettingScreenTableViewCell", for: indexPath)
        
        // print("셀 로우 엣 디자인 함수")
        // cell.textLabel?.text = "TTT"
        // cell.textLabel?.text = indexPath.row
        // print("인덱스 패스 . 로우", indexPath.row)
        // print("인덱스 패스 . 로우", indexPath)
        
        cell.textLabel?.text = cellAllList[indexPath.section][indexPath.row]
        cell.backgroundColor = .clear
        
        cell.textLabel?.font = .systemFont(ofSize: 12)
        
        return cell
    }
    // MARK: - 헤더 디자인 현) 모르겠는데...? (보류)
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//             // UIView 달라 는건 알겠는데 모르겠는데
//    
//        
//        
//        return UIView()
//    }
    
    
    // MARK: - 셀 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        print("셀 높이 함수 ")
        return 32
    }
    
    // MARK: - 최상단 부분 디자인
    func designSettingUILabel(_ uilb:UILabel) {
        uilb.text = "설정"
        uilb.textAlignment = .center
    }
    
    
    
}
