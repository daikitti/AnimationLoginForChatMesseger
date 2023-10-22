//
//  SlideCollectionViewCell.swift
//  chat
//
//  Created by Have Dope on 24.04.2023.
//

import UIKit

class SlideCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var slideImg: UIImageView!
    @IBOutlet weak var pagaControl: UIPageControl!
    @IBOutlet weak var regBtn: UIButton!

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var AuthBth: UIButton!
    
    var delegate: LoginViewControllerDelegate!
    
    static let reuceId = "SlideCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
      
        
    }
    
    func configure(slide: Slides){
        
        slideImg.image = slide.img
        textLabel.text = slide.Text
        
        
    }
    
    
    @IBAction func regBtnClick(_ sender: Any) {
        
        delegate.openRegVC()
        
    }
    
    
    
    @IBAction func authBtnClick(_ sender: Any) {
        print("Войти")
        delegate.openVC()

    }
    
}
