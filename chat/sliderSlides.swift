//
//  sliderSlides.swift
//  chat
//
//  Created by Have Dope on 28.04.2023.
//

import Foundation
import UIKit


class sliderSlides: ObservableObject {
    
    func getSlides() -> [Slides]{
        
        var slides: [Slides] = []
        
        let slide1 = Slides(Text: "Привет, меня зовут Никита и это тестовый месседжер для моих друзей ", img: UIImage(named: "slide1")!)
        let slide2 = Slides(Text: "", img: UIImage(named: "slide2")!)
        
        slides.append(slide1)
        slides.append(slide2)

        return slides
    }
}
