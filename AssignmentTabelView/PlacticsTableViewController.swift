

import UIKit

class PlacticsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - 셀의 개수는 ?
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    // MARK: - 셀의 스타일은 ?
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlacticeTableViewCell", for: indexPath)
        return cell
    }
    
    // MARK: - 셀의 높이는? (옵션)
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    // MARK: - 섹션의 개수는 ? (옵션)
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    // MARK: - 헤더 텍스트 설정 (옵션)
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "헤더입니다."
    }
    // MARK: - 푸터 텍스트 설정 (옵션
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        "푸터 입니다."
    }
    
    // MARK: - 헤더 스타일링 (옵션) 등.... 존재
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let uiview = UIView()
        uiview.backgroundColor = .lightGray
        uiview.layer.cornerRadius = 10
//        let uiViewInLabel =  uiview.accessibilityAttributedLabel
//    
        
        let label = UILabel()
        label.text = "헤더랑께"
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .center
        label.textColor = .red
        // 프레임 줘야 나옴
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 20)
        
        uiview.addSubview(label)
        
        return uiview
    }
    
}
