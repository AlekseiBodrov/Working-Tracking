
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

        let overviewController = UIViewController()
        let sessionController = UIViewController()
        let progressController = UIViewController()
        let settingsController = UIViewController()

        let overviewNavigation = UINavigationController(rootViewController: overviewController)
        let sessionviewNavigation = UINavigationController(rootViewController: sessionController)
        let progressviewNavigation = UINavigationController(rootViewController: progressController)
        let settingsviewNavigation = UINavigationController(rootViewController: settingsController)

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