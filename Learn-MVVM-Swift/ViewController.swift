
import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textField.rx.text
        .bind(to: self.label.rx.text)
        .disposed(by: self.disposeBag)  // 不要になったら破棄
    }
    

    
}

