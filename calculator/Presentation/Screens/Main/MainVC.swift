//
//  MainVC.swift
//  calculator
//
//  Created by Pavel Sharkov on 22.09.2022.
//

import UIKit
import RxSwift
import RxCocoa

class MainVC: UIViewController {
    var viewModel: MainVM!
    let fontSize: CGFloat = 40
    let disposeBag = DisposeBag()
    var publishSubject = PublishSubject<Any>()
    let observable = Observable<String>.just("First observable")
    
    @IBOutlet weak var historyTextView: UITextView!
    
    @IBOutlet weak var equalLabel: UILabel!
    @IBOutlet weak var equationLabel: UILabel!
    
    @IBOutlet weak var cleanDigitsButton: RoundedButton!
    @IBOutlet weak var plusMinusButton: RoundedButton!
    @IBOutlet weak var perсentButton: RoundedButton!
    @IBOutlet weak var cleanHistoryButton: RoundedButton!
    @IBOutlet weak var backspaceButton: RoundedButton!
    
    @IBOutlet weak var nineButton: RoundedButton!
    @IBOutlet weak var eightButton: RoundedButton!
    @IBOutlet weak var sevenButton: RoundedButton!
    
    @IBOutlet weak var sixButton: RoundedButton!
    @IBOutlet weak var fiveButton: RoundedButton!
    @IBOutlet weak var fourButton: RoundedButton!
  
    @IBOutlet weak var threeButton: RoundedButton!
    @IBOutlet weak var twoButton: RoundedButton!
    @IBOutlet weak var oneButton: RoundedButton!
    
    @IBOutlet weak var zeroButton: RoundedButton!
    @IBOutlet weak var commaButton: RoundedButton!
    
    @IBOutlet weak var divideButton: RoundedButton!
    @IBOutlet weak var multiplyButton: RoundedButton!
    @IBOutlet weak var minusButton: RoundedButton!
    @IBOutlet weak var plusButton: RoundedButton!
    
    @IBOutlet weak var equalsButton: RoundedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    //MARK: - Setup -
    
    private func setup() {
        setupButtonColor()
        test()
    }
    
    private func setupButtonColor() {
        
        //MARK: - Firs group -
        
        let firstGroup = [
            cleanDigitsButton,
            plusMinusButton,
            perсentButton,
            cleanHistoryButton,
            backspaceButton
        ]
        
        firstGroup.forEach {
            $0?.backgroundColor = .darkGray
            $0?.tintColor = .white
            $0?.titleLabel?.font = UIFont.systemFont(ofSize: fontSize, weight: .regular)
        }
        
        //MARK: - Second group -
        
        let secondGroup = [
           nineButton,
           eightButton,
           sevenButton,
           sixButton,
           fiveButton,
           fourButton,
           threeButton,
           twoButton,
           oneButton,
           zeroButton,
           commaButton
        ]
        
        secondGroup.forEach {
            $0?.backgroundColor = .white
            $0?.tintColor = .black
            $0?.titleLabel?.font = UIFont.systemFont(ofSize: fontSize, weight: .regular)
        }
        
        //MARK: - Third group -
        
        let thirdGroup = [
           divideButton,
           multiplyButton,
           minusButton,
           plusButton,
           equalsButton
        ]
        
        thirdGroup.forEach {
            $0?.backgroundColor = .orange
            $0?.tintColor = .white
            $0?.titleLabel?.font = UIFont.systemFont(ofSize: fontSize, weight: .regular)
        }
    }
    
    private func test() {
        Observable.of(1,2,3,4,5).do(onNext: { print("called onNext with - \($0)") })
            .subscribe(onNext: { print($0) })
            .dispose()
    }
    
    
    //MARK: - Deinit -
    
    deinit {
        printDeinit(self)
    }
}
