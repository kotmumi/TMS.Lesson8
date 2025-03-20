//
//  AppartmentViewController.swift
//  Lesson8_Kotylo
//
//  Created by Кирилл Котыло on 19.03.25.
//

import UIKit
import SnapKit

class AppartmentViewController: UIViewController {
    
    private var imageView = UIImageView(image: .myHome)
   
    private var homeUIlabel = UILabel()
    private var lightUIView = UIView()
    private var lightUIlabel = UILabel()
    private var lightUIsegmentedControl = UISegmentedControl(items: ["On", "Of"])
    private var lightUIimageView = UIImageView(image: UIImage(systemName: "warninglight.fill"))
    private var doorUIView = UIView()
    private var doorUIlabel = UILabel()
    private var doorUIsegmentedControl = UISegmentedControl(items: ["Lock", "UnLock"])
    private var doorUIimageView = UIImageView(image: UIImage(systemName: "door.left.hand.closed"))
    private var climatControlUIView = UIView()
    private var climatControlUIlabel = UILabel()
    private var climatControlUIsegmentedControl = UISegmentedControl(items: ["Auto", "On", "Off"])
    private var climatControlUIimageView = UIImageView(image: UIImage(systemName: "air.conditioner.horizontal.fill"))
    private var climatControlUIslider = UISlider()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFill
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
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
        
        lightUIView.addSubview(lightUIlabel)
        lightUIlabel.text = "Light"
        lightUIlabel.textColor = .white
        lightUIlabel.font = .systemFont(ofSize: 16, weight: .medium)
        lightUIlabel.alpha = 0.7
        lightUIlabel.snp.makeConstraints { make in
            make.centerX.equalTo(lightUIView.snp.centerX).offset(-8)
            make.top.equalTo(lightUIView.snp.top).offset(8)
        }
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
        lightUIView.addSubview(lightUIimageView)
        lightUIimageView.snp.makeConstraints { make in
            make.trailing.equalTo(lightUIlabel.snp.trailing).offset(24)
            make.top.equalTo(lightUIlabel.snp.top)
        }
        view.addSubview(homeUIlabel)
        homeUIlabel.text = "My home"
        homeUIlabel.font = .systemFont(ofSize: 32, weight: .medium)
        homeUIlabel.textColor = .white
        homeUIlabel.alpha = 0.5
        homeUIlabel.snp.makeConstraints { make in
            make.bottom.equalTo(lightUIView.snp.top).offset(-64)
            make.leading.equalTo(lightUIView.snp.leading)
        }
        
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
        
        doorUIView.addSubview(doorUIlabel)
        doorUIlabel.text = "Door"
        doorUIlabel.textColor = .white
        doorUIlabel.font = .systemFont(ofSize: 16, weight: .medium)
        doorUIlabel.alpha = 0.7
        doorUIlabel.snp.makeConstraints { make in
            make.centerX.equalTo(doorUIView.snp.centerX).offset(-8)
            make.top.equalTo(doorUIView.snp.top).offset(8)
        }
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
        doorUIView.addSubview(doorUIimageView)
        doorUIimageView.snp.makeConstraints { make in
            make.trailing.equalTo(doorUIlabel.snp.trailing).offset(24)
            make.top.equalTo(doorUIlabel.snp.top)
        }
        
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
        
        climatControlUIView.addSubview(climatControlUIlabel)
        climatControlUIlabel.text = "Climat Control"
        climatControlUIlabel.textColor = .white
        climatControlUIlabel.font = .systemFont(ofSize: 16, weight: .medium)
        climatControlUIlabel.alpha = 0.7
        climatControlUIlabel.snp.makeConstraints { make in
            make.centerX.equalTo(climatControlUIView.snp.centerX).offset(-8)
            make.top.equalTo(climatControlUIView.snp.top).offset(8)
        }
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
        climatControlUIView.addSubview(climatControlUIimageView)
        climatControlUIimageView.snp.makeConstraints { make in
            make.trailing.equalTo(climatControlUIlabel.snp.trailing).offset(24)
            make.top.equalTo(climatControlUIlabel.snp.top)
        }
        view.addSubview(climatControlUIslider)
        climatControlUIslider.minimumValue = 0
        climatControlUIslider.maximumValue = 100
        //climatControlUIslider
        //climatControlUIslider.isEnabled = false
        //climatControlUIslider.maximumTrackTintColor = .lightGray
        //climatControlUIslider.minimumTrackTintColor = .systemBlue
        climatControlUIslider.isContinuous = true
        //climatControlUIslider.maximumValueImage = UIImage(systemName: "plus")
        //climatControlUIslider.minimumValueImage = UIImage(systemName: "minus")
        //climatControlUIslider.setValue(16, animated: true)
        climatControlUIslider.snp.makeConstraints { make in
            make.top.equalTo(climatControlUIsegmentedControl.snp.bottom).offset(8)
           make.centerX.equalTo(climatControlUIView.snp.centerX)
        }
        
    }
    
    
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
    @IBAction func climatControlSegmentValueChanged(_ sender: Any) {
        switch climatControlUIsegmentedControl.selectedSegmentIndex {
        case 0:
            climatControlUIimageView.image = UIImage(systemName: "air.conditioner.horizontal.fill")
            climatControlUIslider.isHidden = false
            climatControlUIslider.isEnabled = false
        case 1:
            climatControlUIimageView.image = UIImage(systemName: "air.conditioner.horizontal.fill")
            climatControlUIslider.isHidden = false
            climatControlUIslider.isEnabled = true
        case 2:
            climatControlUIimageView.image = UIImage(systemName: "air.conditioner.horizontal")
            climatControlUIslider.isHidden = true
        default:
            return
        }
    }
}
