import UIKit

final class NavBarController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }

    private func configureView(){
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGray,
            .font: Resources.Fonts.helvelticaRegular(with: 17)
        ]
    }
}
