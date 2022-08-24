
[![Swift Version][swift-image]][swift-url]
[![Platform](https://img.shields.io/cocoapods/p/LFAlertController.svg?style=flat)](http://cocoapods.org/pods/LFAlertController)

# Working Tracking App

<p align="row">
<img src= "https://www.sketchappsources.com/resources/source-image/workout-tracking-app-johnny-jakubowicz.png" width="800" >
</p>
<br />



## Navigate

  - [Requirements](#requirements)
  - [Used](#used-1)
      - [Framework UIKit](#framework-uikit)
      - [Storyboard](#storyboard)
  - [Installation](#installation)
      - [Manually](#manually)
  - [Github](#github)

## Requirements
- iOS 13.0+
- Xcode 13.4.1 

## Used
#### Framework UIKit
``` swift
import UIKit
```

#### Storyboard
``` 
Without Storyboard
```
###### Example

```swift
import UIKit

enum Tabs: Int, CaseIterable {
    case overview
    case session
    case progress
    case settings
}

final class TabBarController: UITabBarController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        configureView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configureView() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = Resources.Colors.seporator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true

        let overviewController = OverviewController()
        let sessionController = SessionController()
        let progressController = ProgressController()
        let settingsController = Settingsontroller()

        let overviewNavigation = NavBarController(rootViewController: overviewController)
        let sessionviewNavigation = NavBarController(rootViewController: sessionController)
        let progressviewNavigation = NavBarController(rootViewController: progressController)
        let settingsviewNavigation = NavBarController(rootViewController: settingsController)

        overviewNavigation.tabBarItem = UITabBarItem(title: Resources.String.TabBar.overview,
                                                     image: Resources.Images.TabBar.overview,
                                                     tag: Tabs.overview.rawValue)
        sessionviewNavigation.tabBarItem = UITabBarItem(title: Resources.String.TabBar.session,
                                                     image: Resources.Images.TabBar.session,
                                                     tag: Tabs.session.rawValue)
        progressviewNavigation.tabBarItem = UITabBarItem(title: Resources.String.TabBar.progress,
                                                     image: Resources.Images.TabBar.progress,
                                                     tag: Tabs.progress.rawValue)
        settingsviewNavigation.tabBarItem = UITabBarItem(title: Resources.String.TabBar.settings,
                                                     image: Resources.Images.TabBar.settings,
                                                     tag: Tabs.settings.rawValue)
        setViewControllers([
            overviewNavigation,
            sessionviewNavigation,
            progressviewNavigation,
            settingsviewNavigation
        ], animated: false)
    }
}

...

extension BaseController {
    func addNavBarButton(at position: NavBarPossition, with title: String) {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Colors.active, for: .normal)
        button.setTitleColor(Resources.Colors.inactive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helvelticaRegular(with: 17)

        switch position {
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
```

## Installation

#### Manually
```
github "AlekseiBodrov/Working-Tracking"
```
1. Download or clone ```Working-Tracking``` in your Xcode.  
2. Congratulations!  

## Github

```
github "AlekseiBodrov/Working-Tracking"
```

[swift-image]:https://img.shields.io/badge/swift-5-orange.svg
[swift-url]: https://swift.org/

