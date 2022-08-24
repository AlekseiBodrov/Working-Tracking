import UIKit

extension UIView {

    func addBottomBorder(with color: UIColor, height: CGFloat) {
        let seporator = UIView()
        seporator.backgroundColor = color
        seporator.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        seporator.frame = CGRect(x: 0,
                                 y: frame.height - height,
                                 width: frame.width,
                                 height: height)
        addSubview(seporator)
    }
}
