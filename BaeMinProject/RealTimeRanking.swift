//
//  RealTimeRanking.swift
//  BaeMinProject
//
//  Created by 김지현 on 2022/05/12.
//

import Foundation

struct RealTimeRank {
    let rank: Int
    let store: String
    let status: Int
}

let RealTimeRankData: [RealTimeRank] = [
    RealTimeRank(rank: 1, store: "순살만공격", status: 1),
    RealTimeRank(rank: 2, store: "후라이드참잘하는집", status: -1),
    RealTimeRank(rank: 3, store: "옛날통닭", status: 0),
    RealTimeRank(rank: 4, store: "일미리금계찜닭", status: 1),
    RealTimeRank(rank: 5, store: "배스킨라빈스", status: 1),
    RealTimeRank(rank: 6, store: "라면", status: 1),
    RealTimeRank(rank: 7, store: "돼지게티", status: 0),
    RealTimeRank(rank: 8, store: "마라샹궈", status: 1),
    RealTimeRank(rank: 9, store: "뼈해장국", status: 1),
    RealTimeRank(rank: 10, store: "아이스아메리카노", status: -1),
]
