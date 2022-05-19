//
//  StrokeView.swift
//  BaeMinProject
//
//  Created by 김지현 on 2022/05/12.
//

import Foundation
import UIKit

class StrokeView: UIView {
    
}

extension StrokeView {
    
    @IBInspectable
    var strokeWidth: CGFloat {
        get {
            self.layer.borderWidth
        }
        
        set {
            self.layer.borderWidth = 1
            self.layer.borderColor = UIColor(named: "Gray")!.cgColor
        }
    }
    
    @IBInspectable
    var cornerRadius : CGFloat{
        //외각선을 짤라주기
        get{
            return self.layer.cornerRadius
        }
        
        set{
            self.layer.cornerRadius = newValue
        }
        
    }
    
    @IBInspectable
    var strokeColor: UIColor {
        get {
            UIColor(named: "Gray")!
        }
        
        set {
            self.layer.borderColor = newValue.cgColor
        }
    }
}
