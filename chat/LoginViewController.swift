//
//  LoginViewController.swift
//  chat
//
//  Created by Have Dope on 24.04.2023.
//

import UIKit

protocol LoginViewControllerDelegate{
    
    func openRegVC()
    func openVC()
    func closeVC()
    
        
    }
    
    


class LoginViewController: UIViewController{
    
    var collectionView: UICollectionView!
    var slides:[Slides] = []
    let slidesSlides = sliderSlides()
    
    var regVC: RegViewController!
    var authVC: AuthViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configCollectionView()
        slides = slidesSlides.getSlides()
    
    }
    
    func configCollectionView(){
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        
        collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: layout )
        collectionView.backgroundColor = .black
        
        self.view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.isPagingEnabled = true
        collectionView.register(UINib(nibName: SlideCollectionViewCell.reuceId, bundle: nil), forCellWithReuseIdentifier: SlideCollectionViewCell.reuceId )
    }
    

}

extension LoginViewController: UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SlideCollectionViewCell.reuceId, for: indexPath) as! SlideCollectionViewCell
        let slide = slides[indexPath.row]
        cell.configure(slide: slide)
        cell.delegate = self
        cell.pagaControl.currentPage = indexPath.row  
        print(indexPath.row)
        if indexPath.row == 1{
            cell.regBtn.isHidden = false
            cell.AuthBth.isHidden = false
        }
        
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         
        return self.view.frame.size
    }
}

extension LoginViewController: LoginViewControllerDelegate{
  
    
    
    
    func openRegVC() {
        if authVC == nil{
            authVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "AuthViewController")
            as! AuthViewController?
        }
        authVC.delegate = self
        self.view.insertSubview(authVC.view, at: 1)
        
    }
    
    func openVC() {
        if regVC == nil {
            regVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "RegViewController")
            as! RegViewController?

        }
        regVC.delegate = self
        self.view.insertSubview(regVC.view, at: 1)
        
    }
    
    func closeVC() {
        if authVC != nil{
            authVC.view.removeFromSuperview()
            authVC = nil
            
            
        }else{
            regVC.view.removeFromSuperview()
            regVC = nil
        }
    }
    
}
