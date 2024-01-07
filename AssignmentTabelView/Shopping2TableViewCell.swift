//
//  Shopping2TableViewCell.swift
//  AssignmentTabelView
//
//  Created by Jae hyung Kim on 1/6/24.
//

import UIKit

class Shopping2TableViewCell: UITableViewCell {
    @IBOutlet var cellBackUIView: UIView!
    @IBOutlet var cheakBoxImageView: UIImageView!
    @IBOutlet var starImageView: UIImageView!
    @IBOutlet var listLabel: UILabel!
    

    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        // 여기다 넣으면 된다 레전드
        designCellBack()
        setChaekImage()
        setStarImage()
        // designLabel() // 이방식은 최악임
        print("몇번?") // 4번 호출함.
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func designCellBack() {
        cellBackUIView.backgroundColor = .systemGray6
        cellBackUIView.layer.cornerRadius = 8
    }
    
    func setChaekImage() {
        //cheakBoxImageView.isUserInteractionEnabled = true
        cheakBoxImageView.clipsToBounds = true
        cheakBoxImageView.image = UIImage(systemName: "checkmark.square.fill")
        // 색이 안먹힌다 내 예상엔 아마 아까와 같은 현상
        // (코드충돌 혹은 순서)
        //cheakBoxImageView.layer.backgroundColor = UIColor.red.cgColor
        // 아 ㅋㅋㅋㅋㅋ 함수 호툴을 안한 거였음
        
        cheakBoxImageView.tintColor = .black
    }

    func setStarImage(){
        starImageView.image = UIImage(systemName: "star.fill")
        starImageView.tintColor = .black
    }
    
    func designLabel(){
        // var temp = list
        // temp.reverse()
        // listLabel.text = temp.popLast()
    }
    // 하지만 여기에 제스처를 추가 하려 하였음에도
    // 제스처가 추가가 되지 않음
    
    // 흠....
//    @IBAction func Test(_ sender: UITapGestureRecognizer) {
//    }
////    
//    
//    func TestTap() {
//        let test = UIGestureRecognizer(target: <#T##Any?#>, action: <#T##Selector?#>)
//    }
    
    
    
    
}
