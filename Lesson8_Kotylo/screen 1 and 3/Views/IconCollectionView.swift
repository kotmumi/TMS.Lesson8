//
//  CollectionView.swift
//  Lesson8_Kotylo
//
//  Created by Кирилл Котыло on 26.03.25.
//

import UIKit

class IconCollectionView: UICollectionView {
    
    let flowLayout = UICollectionViewFlowLayout()
    
    let iconArray = [UIImage(resource: .iOS), UIImage(resource: .PYTON), UIImage(resource: .NET), UIImage(resource: .WEB), UIImage(resource: .GO), UIImage(resource: .UIUX), UIImage(resource: .oneC), UIImage(resource: .QA)]
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: flowLayout)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.register(IconCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        delegate = self
        dataSource = self
    }
}

extension IconCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? IconCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.iconImageView.image = iconArray[indexPath.row]
        return cell
    }
}

extension IconCollectionView: UICollectionViewDelegate {
    
}
