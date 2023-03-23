//
//  text.swift
//  Gmail
//
//  Created by 김기현 on 2023/03/14.
//

import Foundation

struct GamilTitleResponse: Codable {

   let results: [Mail]

    struct Mail: Codable {
        let nametitle: String
        let title: String
        let Emailtitle: String
        let timetitle: String
    }
}
