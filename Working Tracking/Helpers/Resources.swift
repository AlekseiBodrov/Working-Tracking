import UIKit

enum Resources {
    enum Colors {
        static let active = UIColor(hexString: "#437BFE")
        static let inactive = UIColor(hexString: "#929DA5")

        static let background = UIColor(hexString: "#F8F9F9")
        static let seporator = UIColor(hexString: "#E8ECEF")
        static let seconderuy = UIColor(hexString: "#F0F3FF")

        static let titleGray = UIColor(hexString: "#545C77")
    }

    enum String {
        enum TabBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
    }

    enum Images {
        enum TabBar {
        static let overview = UIImage(named: "overview_tab")
        static let session = UIImage(named: "session_tab")
        static let progress = UIImage(named: "progress_tab")
        static let settings = UIImage(named: "setting_tab")
        }
    }
}
