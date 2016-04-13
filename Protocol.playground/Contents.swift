//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol ErrorPopoverRenderer {
    func presentError(message: String, withArrow shouldShowArrow: Bool, backgroundColor: UIColor, withSize size: CGSize, canDismissByTappingAnywhere canDismiss: Bool)
}

extension UIViewController: ErrorPopoverRenderer { //使所有遵从于ErrorPopoverRenderer协议的UIViewController具有一个presentError的默认实现
    func presentError(message: String, withArrow shouldShowArrow: Bool, backgroundColor: UIColor, withSize size: CGSize, canDismissByTappingAnywhere canDismiss: Bool) {
        //加上呈现error视图的默认实现
    }
}

class KrakenViewController: UIViewController { //Drop the God class and make KrakenViewController conform to the new ErrorPopoverRenderer Protocol.
    func methodThatHasAnError() {
        print("An error occured")
    }
}
