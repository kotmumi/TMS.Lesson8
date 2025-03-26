//
//  IconCollectionViewCell.swift
//  Lesson8_Kotylo
//
//  Created by Кирилл Котыло on 26.03.25.
//

import UIKit

class IconCollectionViewCell: UICollectionViewCell {
    
    let iconImageView: UIImageView = {
        let imageView = UIImageView(image: .iOS)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(iconImageView)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            
            iconImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconImageView.heightAnchor.constraint(equalToConstant: 64),
            iconImageView.widthAnchor.constraint(equalToConstant: 64)
        ])
    }
}
