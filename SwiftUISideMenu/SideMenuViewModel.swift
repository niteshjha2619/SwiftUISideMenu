//
//  SideMenuViewModel.swift
//  SwiftUISideMenu
//
//  Created by Nitesh jha on 31/03/21.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case Profile
    case Lists
    case Bookmarks
    case Message
    case Notification
    case logout
    
    var title: String {
        switch self {
        case .Profile:
            return "Profile"
        case .Lists:
            return "Lists"
        case .Bookmarks:
            return "Bookmarks"
        case .Message:
            return "Message"
        case .Notification:
            return "Notification"
        case .logout:
            return "Logout"
        }
    }
    var image: String {
        switch self {
        case .Profile:
            return "person"
        case .Lists:
            return "list.bullet"
        case .Bookmarks:
            return "bookmark"
        case .Message:
            return "bubble.left"
        case .Notification:
            return "bell"
        case .logout:
            return "arrow.left.square"
        }
    }
}
