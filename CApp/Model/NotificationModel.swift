//
//  News.swift
//  CApp
//
//  Created by Emre Konukpay on 7.02.2023.
//

import Foundation

struct NotificationModel: Codable {
    let notifications: [Notification]?
    let error: Bool
}

struct Notification: Codable {
    let ntfID: String
    let senderUserType: String
    let ntfTitle, ntfContent, ntfSendDatetime: String
    let ntfdReadDatetime: String?

    enum CodingKeys: String, CodingKey {
        case ntfID = "ntf_id"
        case senderUserType = "sender_user_type"
        case ntfTitle = "ntf_title"
        case ntfContent = "ntf_content"
        case ntfSendDatetime = "ntf_send_datetime"
        case ntfdReadDatetime = "ntfd_read_datetime"
    }
}


