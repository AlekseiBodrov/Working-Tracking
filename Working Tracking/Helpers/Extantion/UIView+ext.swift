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

    func makeSystem(_ button: UIButton) {
        button.addTarget(self, action: #selector(handleIn), for: [
            .touchDown,
            .touchDragInside
        ])

        button.addTarget(self, action: #selector(handleOut), for: [
            .touchDragOutside,
            .touchUpInside,
            .touchUpOutside,
            .touchDragExit,
            .touchCancel
        ])
    }

    @objc func handleIn() {
        UIView.animate(withDuration: 0.15) { self.alpha = 0.55 }

    }
    @objc func handleOut() {
        UIView.animate(withDuration: 0.15) { self.alpha = 1 }

    }
}


