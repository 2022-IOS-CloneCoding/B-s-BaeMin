//
//  RoundView.swift
//  BaeMinProject
//
//  Created by 김지현 on 2022/05/12.
//

import Foundation
import UIKit

class RoundView: UIView {}

extension RoundView {
    @IBInspectable var cornerRadius : CGFloat{
        //외각선을 짤라주기
        get{
            return self.layer.cornerRadius
        }
        
        set{
            self.layer.cornerRadius = newValue
        }
        
    }
}
