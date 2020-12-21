//
//  Film.swift
//  TestingAlamo
//
//  Created by Roberta Jorgo on 20.12.20.
//

import Foundation

struct Movie: Decodable, Hashable {
    let id: Int
    let title: String
    let openingCrawl: String
    let director: String
    let producer: String
    let releaseDate: String
    let starships: [String]
    
    enum CodingKeys: String, CodingKey {
        case id = "episode_id"
        case title
        case openingCrawl = "opening_crawl"
        case director
        case producer
        case releaseDate = "release_date"
        case starships
    }
    
    public static func mockMovie() -> Movie {
        Movie(id: 1, title: "Mock movie", openingCrawl: "Opening crawl", director: "", producer: "", releaseDate: "", starships: [])
    }
    
    var releaseDateDisplayable: String {
        // form original format to date
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        let date = dateFormatter.date(from:releaseDate)!
        
        // from date to destination format
        dateFormatter.dateFormat = "yyyy"
        return dateFormatter.string(from: date)
    }
}

extension Movie: Displayable {
    var titleLabelText: String {
        title
    }
    
    var subtitleLabelText: String {
        "Episode \(String(id))"
    }
    
    var item1: (label: String, value: String) {
        ("DIRECTOR", director)
    }
    
    var item2: (label: String, value: String) {
        ("PRODUCER", producer)
    }
    
    var item3: (label: String, value: String) {
        ("RELEASE DATE", releaseDate)
    }
    
    var listTitle: String {
        "STARSHIPS"
    }
    
    var listItems: [String] {
        starships
    }
}
