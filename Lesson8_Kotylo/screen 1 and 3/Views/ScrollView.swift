//
//  ScrollView.swift
//  Lesson8_Kotylo
//
//  Created by Кирилл Котыло on 26.03.25.
//

import UIKit

class ScrollView: UIScrollView {
    
    
    private let iconCollectionView = IconCollectionView()
    
    
    //MARK: -init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 16
        self.bouncesHorizontally = true
        self.isScrollEnabled = true
        self.showsHorizontalScrollIndicator = false
        self.contentSize = CGSize(width: 64 * 9, height: 64)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: -setupView
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(iconCollectionView)
        
    }
    
    //MARK: - setConstraints
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            
            iconCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor),
            iconCollectionView.centerXAnchor.constraint(equalTo: centerXAnchor),
            iconCollectionView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconCollectionView.widthAnchor.constraint(equalTo: widthAnchor, constant: 200),
            iconCollectionView.heightAnchor.constraint(equalTo: heightAnchor),
            
        ])
    }
}
