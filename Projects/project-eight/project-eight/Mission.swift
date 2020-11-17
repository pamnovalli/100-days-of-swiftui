//
//  Mission.swift
//  project-eight
//
//  Created by Pamela Ianovalli on 06/11/20.
//

import Foundation

struct CrewRole: Codable {
    let name: String
    let role: String
}


struct Mission: Codable, Identifiable {
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String

    var displayName: String {
        "Apollo \(id)"
    }

    var image: String {
        "apollo\(id)"
    }

    var formattedLaunchDate: String {
        if let launchDate = launchDate {
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            return formatter.string(from: launchDate)
        } else {
           return "N/A"
        }
    }
}
