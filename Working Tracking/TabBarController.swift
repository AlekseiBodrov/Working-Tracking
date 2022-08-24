//
//  TabBarController.swift
//  Working Tracking
//
//  Created by Алексей on 24.08.2022.
//

import UIKit

enum Tabs: Int, CaseIterable {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {

    private func configureView() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = Resources.Colors.seporator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true
    }

}
