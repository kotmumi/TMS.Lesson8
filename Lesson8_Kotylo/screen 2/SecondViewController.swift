//
//  AppartmentViewController.swift
//  Lesson8_Kotylo
//
//  Created by Кирилл Котыло on 19.03.25.
//

import UIKit
import SnapKit

class SecondViewController: UIViewController {
    
// MARK: -View Background
    // MARK: -ImageView
    private let imageView: UIImageView = {
        let image = UIImageView(image: .myHome)
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        return image
    }()
    // MARK: -homeUIlabel add
    private let homeUIlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "My home"
        label.font = .systemFont(ofSize: 32, weight: .medium)
        label.textColor = .white
        label.alpha = 0.5
        return label
    }()
    
// MARK: -Light View element
    // MARK: -lightUIView
    private let lightUIView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        view.alpha = 0.7
        view.layer.cornerRadius = 16
        return view
    }()
    // MARK: -lightUIlabel
    private let lightUIlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Light"
        label.textColor = .white
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.alpha = 0.7
        return label
    }()
    // MARK: -lightUIsegmentedControl
    private let lightUIsegmentedControl:UISegmentedControl = {
        let segment = UISegmentedControl(items: ["On", "Off"])
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.selectedSegmentIndex = 0
        segment.selectedSegmentTintColor = .white
        segment.backgroundColor = .lightGray
        segment.alpha = 0.7
        return segment
    }()
    // MARK: -lightUIimageView
    private let lightUIimageView: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "warninglight.fill"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()

// MARK: -Door View element
    // MARK: -doorUIView
    private let doorUIView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        view.alpha = 0.7
        view.layer.cornerRadius = 16
        return view
    }()
    // MARK: -doorUIlabel
    private let doorUIlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Door"
        label.textColor = .white
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.alpha = 0.7
        return label
    }()
    // MARK: -doorUIsegmentedControl
    private let doorUIsegmentedControl: UISegmentedControl = {
        let segment = UISegmentedControl(items: ["Lock", "UnLock"])
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.selectedSegmentIndex = 0
        segment.selectedSegmentTintColor = .white
        segment.backgroundColor = .lightGray
        segment.alpha = 0.7
        return segment
    }()
    // MARK: -doorUIimageView
    private let doorUIimageView: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "door.left.hand.closed"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
// MARK: -climatControl View element
    // MARK: -climatControlUIView
    private let climatControlUIView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .lightGray
        view.alpha = 0.7
        view.layer.cornerRadius = 16
        return view
    }()
    // MARK: -climatControlUIlabel
    private let climatControlUIlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Climat Control"
        label.textColor = .white
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.alpha = 0.7
        return label
    }()
    // MARK: -climatControlUIsegmentedControl
    private let climatControlUIsegmentedControl: UISegmentedControl = {
        let segment = UISegmentedControl(items: ["Auto", "On", "Off"])
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.selectedSegmentIndex = 0
        segment.selectedSegmentTintColor = .white
        segment.backgroundColor = .lightGray
        segment.alpha = 0.7
        return segment
    }()
    // MARK: -climatControlUIimageView
    private let climatControlUIimageView = {
        let image = UIImageView(image: UIImage(systemName: "air.conditioner.horizontal.fill"))
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    // MARK: -climatControlUIslider
    private let climatControlUIslider: UISlider = {
        let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.minimumValue = 16
        slider.maximumValue = 30
        slider.isEnabled = false
        slider.isContinuous = true
        slider.maximumValueImage = UIImage(systemName: "plus")
        slider.minimumValueImage = UIImage(systemName: "minus")
        slider.setValue(24, animated: true)
        return slider
    }()
    // MARK: -climatControlValueUIlabel
    private var climatControlValueUIlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textColor = .white
        return label
    }()
    
// MARK: -backtoFirstScreen View element
    // MARK: -backToFirstScreenUIButton add
    private let backToFirstScreenUIButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .lightGray
        button.alpha = 0.7
        button.setTitle("<- Back to first Screen", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        button.tintColor = .white
        button.layer.cornerRadius = 8
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setConstraints()
    }
    
    func setupViews() {
        view.addSubview(imageView)
        view.addSubview(homeUIlabel)
        imageView.addSubview(lightUIView)
        lightUIView.addSubview(lightUIlabel)
        view.addSubview(lightUIsegmentedControl)
        lightUIsegmentedControl.addTarget(self,
                                  action: #selector(lightSegmentValueChanged(_:)),
                                  for: .valueChanged)
        lightUIView.addSubview(lightUIimageView)
        imageView.addSubview(doorUIView)
        doorUIView.addSubview(doorUIlabel)
        view.addSubview(doorUIsegmentedControl)
        doorUIsegmentedControl.addTarget(self,
                                  action: #selector(doorSegmentValueChanged(_:)),
                                  for: .valueChanged)
        doorUIView.addSubview(doorUIimageView)
        imageView.addSubview(climatControlUIView)
        climatControlUIView.addSubview(climatControlUIlabel)
        view.addSubview(climatControlUIsegmentedControl)
        climatControlUIsegmentedControl.addTarget(self,
                                  action: #selector(climatControlSegmentValueChanged(_:)),
                                  for: .valueChanged)
        climatControlUIView.addSubview(climatControlUIimageView)
        view.addSubview(climatControlUIslider)
        climatControlUIslider.addTarget(self,
                                        action: #selector(valueChangedOfSlider(_:)),
                                        for: .valueChanged)
        view.addSubview(climatControlValueUIlabel)
        climatControlValueUIlabel.text = "\(String(climatControlUIslider.value))°C"
        view.addSubview(backToFirstScreenUIButton)
        backToFirstScreenUIButton.addTarget(self,
                                     action: #selector(goToFirstController(_:)),
                                     for: .touchUpInside)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            lightUIView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 128),
            lightUIView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            lightUIView.heightAnchor.constraint(equalToConstant: 128),
            lightUIView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5, constant: -40),
            
            homeUIlabel.bottomAnchor.constraint(equalTo: lightUIView.topAnchor, constant: -64),
            homeUIlabel.leadingAnchor.constraint(equalTo: lightUIView.leadingAnchor),
           
            lightUIlabel.centerXAnchor.constraint(equalTo: lightUIView.centerXAnchor, constant: -8),
            lightUIlabel.topAnchor.constraint(equalTo: lightUIView.topAnchor, constant: 8),
            
            lightUIsegmentedControl.centerXAnchor.constraint(equalTo: lightUIView.centerXAnchor),
            lightUIsegmentedControl.centerYAnchor.constraint(equalTo: lightUIView.centerYAnchor),
            lightUIsegmentedControl.leadingAnchor.constraint(equalTo: lightUIView.leadingAnchor, constant: 8),
            lightUIsegmentedControl.trailingAnchor.constraint(equalTo: lightUIView.trailingAnchor, constant: -8),
            
            lightUIimageView.topAnchor.constraint(equalTo: lightUIlabel.topAnchor),
            lightUIimageView.trailingAnchor.constraint(equalTo: lightUIlabel.trailingAnchor, constant: 24),
            
            doorUIView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 128),
            doorUIView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            doorUIView.heightAnchor.constraint(equalToConstant: 128),
            doorUIView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5, constant: -40),
            
            doorUIlabel.centerXAnchor.constraint(equalTo: doorUIView.centerXAnchor, constant: -8),
            doorUIlabel.topAnchor.constraint(equalTo: doorUIView.topAnchor, constant: 8),
            
            doorUIsegmentedControl.centerXAnchor.constraint(equalTo: doorUIView.centerXAnchor),
            doorUIsegmentedControl.centerYAnchor.constraint(equalTo: doorUIView.centerYAnchor),
            doorUIsegmentedControl.leadingAnchor.constraint(equalTo: doorUIView.leadingAnchor, constant: 8),
            doorUIsegmentedControl.trailingAnchor.constraint(equalTo: doorUIView.trailingAnchor, constant: -8),
            
            doorUIimageView.topAnchor.constraint(equalTo: doorUIlabel.topAnchor),
            doorUIimageView.trailingAnchor.constraint(equalTo: doorUIlabel.trailingAnchor, constant: 24),
            
            climatControlUIView.topAnchor.constraint(equalTo: lightUIView.bottomAnchor, constant: 16),
            climatControlUIView.leadingAnchor.constraint(equalTo: lightUIView.leadingAnchor),
            climatControlUIView.heightAnchor.constraint(equalToConstant: 128),
            climatControlUIView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -32),
            
            climatControlUIlabel.centerXAnchor.constraint(equalTo: climatControlUIView.centerXAnchor, constant: -8),
            climatControlUIlabel.topAnchor.constraint(equalTo: climatControlUIView.topAnchor, constant: 8),
            
            climatControlUIsegmentedControl.centerXAnchor.constraint(equalTo: climatControlUIView.centerXAnchor),
            climatControlUIsegmentedControl.centerYAnchor.constraint(equalTo: climatControlUIView.centerYAnchor),
            climatControlUIsegmentedControl.widthAnchor.constraint(equalTo: climatControlUIView.widthAnchor, multiplier: 0.8),
            
            climatControlUIimageView.topAnchor.constraint(equalTo: climatControlUIlabel.topAnchor),
            climatControlUIimageView.trailingAnchor.constraint(equalTo: climatControlUIlabel.trailingAnchor, constant: 24),
            
            climatControlUIslider.centerXAnchor.constraint(equalTo: climatControlUIView.centerXAnchor, constant: -16),
            climatControlUIslider.topAnchor.constraint(equalTo: climatControlUIsegmentedControl.bottomAnchor, constant: 8),
            climatControlUIslider.widthAnchor.constraint(equalTo: climatControlUIView.widthAnchor, multiplier: 0.67),
            
            climatControlValueUIlabel.centerYAnchor.constraint(equalTo: climatControlUIslider.centerYAnchor),
            climatControlValueUIlabel.leadingAnchor.constraint(equalTo: climatControlUIslider.trailingAnchor, constant: 16),
            backToFirstScreenUIButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -64),
            backToFirstScreenUIButton.leadingAnchor.constraint(equalTo: climatControlUIView.leadingAnchor, constant: 32),
            backToFirstScreenUIButton.trailingAnchor.constraint(equalTo: climatControlUIView.trailingAnchor, constant: -32),
            backToFirstScreenUIButton.heightAnchor.constraint(equalToConstant: 32)
            
        ])
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
            climatControlValueUIlabel.text = "\(String(Int(climatControlUIslider.value)))°C"
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
    
   // MARK: -Action valueChangedOfSlider
    @IBAction func valueChangedOfSlider(_ sender: UISlider)
    {
        climatControlValueUIlabel.text = "\(String(Int(climatControlUIslider.value)))°C"
    }
}

#Preview {
    SecondViewController()
}
