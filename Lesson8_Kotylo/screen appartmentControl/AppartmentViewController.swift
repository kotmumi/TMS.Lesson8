//
//  AppartmentViewController.swift
//  Lesson8_Kotylo
//
//  Created by Кирилл Котыло on 19.03.25.
//

import UIKit
import SnapKit

class AppartmentViewController: UIViewController {
// MARK: -View Background
    private var imageView = UIImageView(image: .myHome)
    private var homeUIlabel = UILabel()
// MARK: -Light View element
    private var lightUIView = UIView()
    private var lightUIlabel = UILabel()
    private var lightUIsegmentedControl = UISegmentedControl(items: ["On", "Of"])
    private var lightUIimageView = UIImageView(image: UIImage(systemName: "warninglight.fill"))
// MARK: -Door View element
    private var doorUIView = UIView()
    private var doorUIlabel = UILabel()
    private var doorUIsegmentedControl = UISegmentedControl(items: ["Lock", "UnLock"])
    private var doorUIimageView = UIImageView(image: UIImage(systemName: "door.left.hand.closed"))
// MARK: -climatControl View element
    private var climatControlUIView = UIView()
    private var climatControlUIlabel = UILabel()
    private var climatControlUIsegmentedControl = UISegmentedControl(items: ["Auto", "On", "Off"])
    private var climatControlUIimageView = UIImageView(image: UIImage(systemName: "air.conditioner.horizontal.fill"))
    private var climatControlUIslider = UISlider()
    private var climatControlValueUIlabel = UILabel()
// MARK: -backtoFirstScreen View element
    private var backToFirstScreenUIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
// MARK: -ImageView add
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFill
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
// MARK: -lightUIView add
        imageView.addSubview(lightUIView)
        lightUIView.backgroundColor = .lightGray
        lightUIView.alpha = 0.7
        lightUIView.layer.cornerRadius = 16
        lightUIView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(128)
            make.leading.equalToSuperview().offset(16)
            make.height.equalTo(128)
            make.width.equalTo(view.snp.width).dividedBy(2).offset(-40)
        }
// MARK: -lightUIlabel add
        lightUIView.addSubview(lightUIlabel)
        lightUIlabel.text = "Light"
        lightUIlabel.textColor = .white
        lightUIlabel.font = .systemFont(ofSize: 16, weight: .medium)
        lightUIlabel.alpha = 0.7
        lightUIlabel.snp.makeConstraints { make in
            make.centerX.equalTo(lightUIView.snp.centerX).offset(-8)
            make.top.equalTo(lightUIView.snp.top).offset(8)
        }
// MARK: -lightUIsegmentedControl add
        view.addSubview(lightUIsegmentedControl)
        lightUIsegmentedControl.selectedSegmentIndex = 0
        lightUIsegmentedControl.selectedSegmentTintColor = .white
        lightUIsegmentedControl.backgroundColor = .lightGray
        lightUIsegmentedControl.alpha = 0.7
        lightUIsegmentedControl.addTarget(self,
                                  action: #selector(lightSegmentValueChanged(_:)),
                                  for: .valueChanged)
        lightUIsegmentedControl.snp.makeConstraints { make in
            make.center.equalTo(lightUIView.snp.center)
            make.trailing.equalTo(lightUIView.snp.trailing).offset(-8)
            make.leading.equalTo(lightUIView.snp.leading).offset(8)
        }
// MARK: -lightUIimageView add
        lightUIView.addSubview(lightUIimageView)
        lightUIimageView.snp.makeConstraints { make in
            make.trailing.equalTo(lightUIlabel.snp.trailing).offset(24)
            make.top.equalTo(lightUIlabel.snp.top)
        }
// MARK: -homeUIlabel add
        view.addSubview(homeUIlabel)
        homeUIlabel.text = "My home"
        homeUIlabel.font = .systemFont(ofSize: 32, weight: .medium)
        homeUIlabel.textColor = .white
        homeUIlabel.alpha = 0.5
        homeUIlabel.snp.makeConstraints { make in
            make.bottom.equalTo(lightUIView.snp.top).offset(-64)
            make.leading.equalTo(lightUIView.snp.leading)
        }
// MARK: -doorUIView add
        imageView.addSubview(doorUIView)
        doorUIView.backgroundColor = .lightGray
        doorUIView.alpha = 0.7
        doorUIView.layer.cornerRadius = 16
        doorUIView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(128)
            make.trailing.equalTo(view.snp.trailing).offset(-16)
            make.height.equalTo(128)
            make.width.equalTo(view.snp.width).dividedBy(2).offset(-40)
        }
// MARK: -doorUIlabel add
        doorUIView.addSubview(doorUIlabel)
        doorUIlabel.text = "Door"
        doorUIlabel.textColor = .white
        doorUIlabel.font = .systemFont(ofSize: 16, weight: .medium)
        doorUIlabel.alpha = 0.7
        doorUIlabel.snp.makeConstraints { make in
            make.centerX.equalTo(doorUIView.snp.centerX).offset(-8)
            make.top.equalTo(doorUIView.snp.top).offset(8)
        }
// MARK: -doorUIsegmentedControl add
        view.addSubview(doorUIsegmentedControl)
        doorUIsegmentedControl.selectedSegmentIndex = 0
        doorUIsegmentedControl.selectedSegmentTintColor = .white
        doorUIsegmentedControl.backgroundColor = .lightGray
        doorUIsegmentedControl.alpha = 0.7
        doorUIsegmentedControl.addTarget(self,
                                  action: #selector(doorSegmentValueChanged(_:)),
                                  for: .valueChanged)
        doorUIsegmentedControl.snp.makeConstraints { make in
            make.center.equalTo(doorUIView.snp.center)
            make.trailing.equalTo(doorUIView.snp.trailing).offset(-8)
            make.leading.equalTo(doorUIView.snp.leading).offset(8)
        }
// MARK: -doorUIimageView add
        doorUIView.addSubview(doorUIimageView)
        doorUIimageView.snp.makeConstraints { make in
            make.trailing.equalTo(doorUIlabel.snp.trailing).offset(24)
            make.top.equalTo(doorUIlabel.snp.top)
        }
// MARK: -climatControlUIView add
        imageView.addSubview(climatControlUIView)
        climatControlUIView.backgroundColor = .lightGray
        climatControlUIView.alpha = 0.7
        climatControlUIView.layer.cornerRadius = 16
        climatControlUIView.snp.makeConstraints { make in
            make.top.equalTo(lightUIView.snp.bottom).offset(16)
            make.leading.equalTo(lightUIView.snp.leading)
            make.height.equalTo(128)
            make.width.equalTo(view.snp.width).offset(-32)
        }
// MARK: -climatControlUIlabel add
        climatControlUIView.addSubview(climatControlUIlabel)
        climatControlUIlabel.text = "Climat Control"
        climatControlUIlabel.textColor = .white
        climatControlUIlabel.font = .systemFont(ofSize: 16, weight: .medium)
        climatControlUIlabel.alpha = 0.7
        climatControlUIlabel.snp.makeConstraints { make in
            make.centerX.equalTo(climatControlUIView.snp.centerX).offset(-8)
            make.top.equalTo(climatControlUIView.snp.top).offset(8)
        }
// MARK: -climatControlUIsegmentedControl add
        view.addSubview(climatControlUIsegmentedControl)
        climatControlUIsegmentedControl.selectedSegmentIndex = 0
        climatControlUIsegmentedControl.selectedSegmentTintColor = .white
        climatControlUIsegmentedControl.backgroundColor = .lightGray
        climatControlUIsegmentedControl.alpha = 0.7
        climatControlUIsegmentedControl.addTarget(self,
                                  action: #selector(climatControlSegmentValueChanged(_:)),
                                  for: .valueChanged)
        climatControlUIsegmentedControl.snp.makeConstraints { make in
            make.center.equalTo(climatControlUIView.snp.center)
            make.trailing.equalTo(climatControlUIView.snp.trailing).offset(-32)
            make.leading.equalTo(climatControlUIView.snp.leading).offset(32)
        }
// MARK: -climatControlUIimageView add
        climatControlUIView.addSubview(climatControlUIimageView)
        climatControlUIimageView.snp.makeConstraints { make in
            make.trailing.equalTo(climatControlUIlabel.snp.trailing).offset(24)
            make.top.equalTo(climatControlUIlabel.snp.top)
        }
// MARK: -climatControlUIslider add
        view.addSubview(climatControlUIslider)
        climatControlUIslider.minimumValue = 16
        climatControlUIslider.maximumValue = 30
        climatControlUIslider.isEnabled = false
        climatControlUIslider.isContinuous = true
        climatControlUIslider.maximumValueImage = UIImage(systemName: "plus")
        climatControlUIslider.minimumValueImage = UIImage(systemName: "minus")
        climatControlUIslider.setValue(24, animated: true)
        climatControlUIslider.snp.makeConstraints { make in
            make.top.equalTo(climatControlUIsegmentedControl.snp.bottom).offset(8)
            make.centerX.equalTo(climatControlUIView.snp.centerX).offset(-16)
            make.width.equalTo(climatControlUIView.snp.width).dividedBy(1.5)
        }
// MARK: -climatControlValueUIlabel add
        view.addSubview(climatControlValueUIlabel)
        climatControlValueUIlabel.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        climatControlValueUIlabel.textColor = .white
        climatControlValueUIlabel.text = "\(String(climatControlUIslider.value))°C"
        climatControlValueUIlabel.snp.makeConstraints { make in
            make.centerY.equalTo(climatControlUIslider.snp.centerY)
            make.leading.equalTo(climatControlUIslider.snp.trailing).offset(16)
        }
// MARK: -backToFirstScreenUIButton add
        view.addSubview(backToFirstScreenUIButton)
        backToFirstScreenUIButton.backgroundColor = .lightGray
        backToFirstScreenUIButton.alpha = 0.7
        backToFirstScreenUIButton.setTitle("<- Back to first Screen", for: .normal)
        backToFirstScreenUIButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        backToFirstScreenUIButton.tintColor = .white
        backToFirstScreenUIButton.layer.cornerRadius = 8
        backToFirstScreenUIButton.addTarget(self,
                                     action: #selector(goToFirstController(_:)),
                                     for: .touchUpInside)
        
        backToFirstScreenUIButton.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-64)
            make.trailing.equalTo(climatControlUIView.snp.trailing).offset(-32)
            make.leading.equalTo(climatControlUIView.snp.leading).offset(32)
            make.height.equalTo(32)
        }
    }
    
// MARK: -Action lightSegmentValueChanged
    @IBAction func lightSegmentValueChanged(_ sender: Any) {
        switch lightUIsegmentedControl.selectedSegmentIndex {
         case 0:
            lightUIimageView.image = UIImage(systemName: "warninglight.fill")
        case 1:
            lightUIimageView.image = UIImage(systemName: "warninglight")
         default:
           return
         }
    }
    // MARK: -Action goToFirstController
    @IBAction private func goToFirstController(_ sender: UIButton) {
        let controller = ViewController()
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
     }
// MARK: -Action doorSegmentValueChanged
    @IBAction func doorSegmentValueChanged(_ sender: Any) {
        switch doorUIsegmentedControl.selectedSegmentIndex {
         case 0:
            doorUIimageView.image = UIImage(systemName: "door.left.hand.closed")
        case 1:
            doorUIimageView.image = UIImage(systemName: "door.left.hand.open")
         default:
           return
         }
    }
// MARK: -Action climatControlSegmentValueChanged
    @IBAction func climatControlSegmentValueChanged(_ sender: Any) {
        switch climatControlUIsegmentedControl.selectedSegmentIndex {
        case 0:
            climatControlUIimageView.image = UIImage(systemName: "air.conditioner.horizontal.fill")
            climatControlUIslider.isHidden = false
            climatControlUIslider.isEnabled = false
            climatControlUIslider.setValue(24, animated: true)
            climatControlValueUIlabel.isHidden = false
        case 1:
            climatControlUIimageView.image = UIImage(systemName: "air.conditioner.horizontal.fill")
            climatControlUIslider.isHidden = false
            climatControlUIslider.isEnabled = true
            climatControlValueUIlabel.isHidden = false
        case 2:
            climatControlUIimageView.image = UIImage(systemName: "air.conditioner.horizontal")
            climatControlUIslider.isHidden = true
            climatControlValueUIlabel.isHidden = true
        default:
            return
        }
    }
}
