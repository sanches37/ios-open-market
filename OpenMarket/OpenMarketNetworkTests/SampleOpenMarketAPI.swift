//
//  OpenMarketAPI.swift
//  OpenMarket
//
//  Created by James, Sunny on 2021/05/17.
//

import Foundation

enum SampleOpenMarketAPI {
    case connection
    
    static let baseURL =  "https://camp-open-market-2.herokuapp.com/"
    var itemListPath: String { "Items/"}
    var itemInformationPath: String {"Item"}
    var itemListURL: URL? {
        URL(string: SampleOpenMarketAPI.baseURL + itemListPath)
    }
    var itemInformationURL: URL? {
        URL(string: SampleOpenMarketAPI.baseURL + itemInformationPath)
    }
    
    var itemInformationData: Data {
        Data (
            """
        {
            "id": 1,
            "title": "MacBook Pro",
            "descriptions": "Apple M1 칩은 13형 MacBook Pro에 믿을 수 없을 만큼의 속도와 파워를 선사합니다.\n최대 2.8배 향상된 CPU 성능, 최대 5배 빨라진 그래픽 속도, 최대 11배 빨라진 머신 러닝 성능을 구현하는 최첨단 Apple 제작 Neural Engine, 여기에 무려 20시간 지속되는 Mac 사상 가장 오래가는 배터리까지.\n외장은 Apple의 가장 사랑받는 프로용 노트북 그대로, 하지만 그 능력은 한 차원 더 높아졌습니다.",
            "price": 1690000,
            "currency": "KRW",
            "stock": 1000000000000,
            "thumbnails": [
                "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/1-1.png",
                "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/1-2.png"
            ],
            "images": [
                "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/images/1-1.png",
                "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/images/1-2.png"
            ],
            "registration_date": 1611523563.719116
        }
        """.utf8
        )
    }
    
    var itemListData: Data {
        Data(
            """
        {
            "page": 1,
            "items": [
                {
                    "id": 1,
                    "title": "MacBook Pro",
                    "price": 1690,
                    "currency": "USD",
                    "stock": 0,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/1-1.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/1-2.png"
                    ],
                    "registration_date": 1611523563.7237701
                },
                {
                    "id": 2,
                    "title": "MacBook Air",
                    "price": 1290000,
                    "currency": "KRW",
                    "stock": 1000000000000,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/2-1.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/2-2.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/2-3.png"
                    ],
                    "registration_date": 1611523563.719116
                },
                {
                    "id": 3,
                    "title": "Mac mini",
                    "price": 890000,
                    "currency": "KRW",
                    "stock": 90,
                    "discounted_price": 89000,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/3-1.png"
                    ],
                    "registration_date": 1611523563.7245178
                },
                {
                    "id": 4,
                    "title": "iPad Pro",
                    "price": 999000,
                    "currency": "KRW",
                    "stock": 200000000,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/4-1.png"
                    ],
                    "registration_date": 1611523563.737014
                },
                {
                    "id": 5,
                    "title": "Apple Pencil",
                    "price": 165,
                    "currency": "USD",
                    "stock": 5000000,
                    "discounted_price": 160,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/5-1.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/5-2.png"
                    ],
                    "registration_date": 1611523563.725668
                },
                {
                    "id": 6,
                    "title": "iPhone 12 Pro",
                    "price": 1350,
                    "currency": "USD",
                    "stock": 0,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/6-1.png"
                    ],
                    "registration_date": 1611523563.72621
                },
                {
                    "id": 7,
                    "title": "iPhone 12 mini",
                    "price": 950000,
                    "currency": "KRW",
                    "stock": 500,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/7-1.png"
                    ],
                    "registration_date": 1611523563.726968
                },
                {
                    "id": 8,
                    "title": "AirPods Max",
                    "price": 719,
                    "currency": "USD",
                    "stock": 1000000000000,
                    "discounted_price": 500,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/8-1.png"
                    ],
                    "registration_date": 1611523563.727608
                },
                {
                    "id": 9,
                    "title": "Apple Watch Series 6",
                    "price": 539000,
                    "currency": "KRW",
                    "stock": 500,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/9-1.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/9-2.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/9-3.png"
                    ],
                    "registration_date": 1611523563.728167
                },
                {
                    "id": 10,
                    "title": "AirTag",
                    "price": 39,
                    "currency": "USD",
                    "stock": 90000,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/10-1.png"
                    ],
                    "registration_date": 1611523563.7287378
                },
                {
                    "id": 11,
                    "title": "MagSafe 충전기",
                    "price": 55000,
                    "currency": "KRW",
                    "stock": 1500000000,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/11-1.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/11-2.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/11-3.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/11-4.png"
                    ],
                    "registration_date": 1611523563.7292829
                },
                {
                    "id": 12,
                    "title": "Magic Trackpad 2",
                    "price": 179000,
                    "currency": "KRW",
                    "stock": 200,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/12-1.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/12-2.png"
                    ],
                    "registration_date": 1611523563.729826
                },
                {
                    "id": 13,
                    "title": "12.9형 iPad Pro(5세대)용 Magic Keyboard",
                    "price": 449000,
                    "currency": "KRW",
                    "stock": 9000000000,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/13-1.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/13-2.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/13-3.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/13-4.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/13-5.png"
                    ],
                    "registration_date": 1611523563.730362
                },
                {
                    "id": 14,
                    "title": "MagSafe형 iPhone 가죽 카드지갑",
                    "price": 75000,
                    "currency": "KRW",
                    "stock": 50000,
                    "discounted_price": 70000,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/14-1.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/14-2.png"
                    ],
                    "registration_date": 1611523563.7309098
                },
                {
                    "id": 15,
                    "title": "AirTag 루프",
                    "price": 39000,
                    "currency": "KRW",
                    "stock": 3000,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/15-1.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/15-2.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/15-3.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/15-4.png"
                    ],
                    "registration_date": 1611523563.7314491
                },
                {
                    "id": 16,
                    "title": "MagSafe형 iPhone 12 mini 실리콘 케이스",
                    "price": 59000,
                    "currency": "KRW",
                    "stock": 0,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/16-1.png"
                    ],
                    "registration_date": 1611523563.732012
                },
                {
                    "id": 17,
                    "title": "밀레니즈 루프",
                    "price": 125000,
                    "currency": "KRW",
                    "stock": 90000,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/17-1.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/17-2.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/17-3.png"
                    ],
                    "registration_date": 1611523563.732594
                },
                {
                    "id": 18,
                    "title": "Hermès 점핑 싱글 투어",
                    "price": 449,
                    "currency": "USD",
                    "stock": 0,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/18-1.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/18-2.png",
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/18-3.png"
                    ],
                    "registration_date": 1611523563.7334251
                },
                {
                    "id": 19,
                    "title": "Pro Display XDR",
                    "price": 6499,
                    "currency": "USD",
                    "stock": 99,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/19-1.png"
                    ],
                    "registration_date": 1611523563.734062
                },
                {
                    "id": 20,
                    "title": "Magic Keyboard with Numeric Keypad",
                    "price": 179,
                    "currency": "USD",
                    "stock": 0,
                    "thumbnails": [
                        "https://camp-open-market.s3.ap-northeast-2.amazonaws.com/thumbnails/20-1.png"
                    ],
                    "registration_date": 1611523563.7466989
                }
            ]
        }
        """.utf8
            
        )
    }
}
