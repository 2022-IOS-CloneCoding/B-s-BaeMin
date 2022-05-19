//
//  SearchViewController.swift
//  BaeMinProject
//
//  Created by 김지현 on 2022/05/06.
//

import UIKit

class SearchViewController: UIViewController {

    static let sampleRecentSearchList: [String] = [
        "당치땡",
        "달리는 커피",
        "카페 700",
        "치킨",
        "파리바게뜨",
        "파스쿠찌"
    ]
    
    @IBOutlet weak var recentSearchCollectionView: UICollectionView!
    @IBOutlet weak var realTimeRankingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}

extension SearchViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.recentSearchCollectionView as? UICollectionView {
            return Self.sampleRecentSearchList.count
        }
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.recentSearchCollectionView {
            let cell = self.recentSearchCollectionView.dequeueReusableCell(withReuseIdentifier: "RecentSearchCell", for: indexPath) as! RecentSearchCell
            
            cell.stackView.layer.cornerRadius = cell.stackView.bounds.height/2
            cell.searchText.text = Self.sampleRecentSearchList[indexPath.row]
            
            return cell
        } else {
            
            let cell = self.realTimeRankingCollectionView.dequeueReusableCell(withReuseIdentifier: "RankingCell", for: indexPath) as! RealTimeRankingCell
            
            cell.realTimeData = RealTimeRankData[indexPath.row]
            
            cell.update()
            
            return cell
        }
                
    }
    
    // 위 아래 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        if collectionView == self.realTimeRankingCollectionView {
            return 28
        }
        
        return 10
    }

    // 옆 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        if collectionView == self.realTimeRankingCollectionView {
            return 30
        }
        
        return 0
    }

    // cell 사이즈( 옆 라인을 고려하여 설정 )
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        if collectionView == self.realTimeRankingCollectionView {
            let width = (collectionView.frame.width - 30 - 14 - 14) / 2
            let height = (collectionView.frame.height - (28 * 5)) / 5
            let size = CGSize(width: width, height: height)
            
            return size
        } else {
            
            let cell = self.recentSearchCollectionView.dequeueReusableCell(withReuseIdentifier: "RecentSearchCell", for: indexPath) as! RecentSearchCell
                
                return CGSize(width: cell.stackView.bounds.width, height: 20)
            
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14)
    }
    
}
