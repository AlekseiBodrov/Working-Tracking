
import UIKit

class ProgressController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Workout Progress"
        navigationController?.tabBarItem.title = Resources.String.TabBar.progress

        addNavBarButton(at: .left, with: "Exprot")
        addNavBarButton(at: .right, with: "Ditailse")
    }
}
