
import UIKit

class SessionController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = Resources.String.TabBar.session

        addNavBarButton(at: .left, with: "Pause")
        addNavBarButton(at: .right, with: "Finish")
    }
}
