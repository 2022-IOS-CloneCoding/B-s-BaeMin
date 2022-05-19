//
//  RealTimeRankingCell.swift
//  BaeMinProject
//
//  Created by 김지현 on 2022/05/12.
//

import Foundation
import UIKit

class RealTimeRankingCell: UICollectionViewCell {
    
    @IBOutlet weak var ranking: UILabel!
    @IBOutlet weak var store: UILabel!
    @IBOutlet weak var status: UIImageView!
    
    var realTimeData: RealTimeRank? = nil
    
    func update() {
        
        guard let realTimeData = realTimeData else {
            return
        }
        
        self.ranking.text = String(realTimeData.rank)
        
        switch realTimeData.rank {
        case 1 ... 3:
            self.ranking.font = UIFont.boldSystemFont(ofSize: 16)
        default:
            break
        }
        
        self.store.text = realTimeData.store
        
        if realTimeData.status < 0 {
            self.status.image = UIImage(named: "search_ranking_down")
        } else if realTimeData.status > 0 {
            self.status.image = UIImage(named: "search_ranking_up")
        } else {
            self.status.image = UIImage(named: "search_ranking_same")
        }
    }
}
