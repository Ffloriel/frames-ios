import XCTest
@testable import CheckoutSdkIos

class CvvInputViewMockDelegate: UIViewController, UITextFieldDelegate {

    var calledTimes = 0
    var lastCalledWith: UITextField!

    func textFieldDidEndEditing(_ textField: UITextField) {
        calledTimes += 1
        lastCalledWith = textField
    }
}
