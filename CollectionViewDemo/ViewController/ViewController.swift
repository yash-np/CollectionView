
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
    }
    
    func setupCollectionView() {
        let searchCollectionView = UICollectionView(frame: .zero, collectionViewLayout: getCompositionalLayout())
        searchCollectionView.frame = self.view.frame
        searchCollectionView.delegate = self
        searchCollectionView.dataSource = self
        searchCollectionView.backgroundColor = .white
        searchCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        self.view.addSubview(searchCollectionView)
        
    }
    
    func getCompositionalLayout() -> UICollectionViewCompositionalLayout {
       
        
        //--------- Group 1 Item 1 ---------//
        
        let group1Item1Sub1 = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalHeight(1)))
        group1Item1Sub1.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
        let group1Item1Sub2 = NSCollectionLayoutItem(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalHeight(1)))
        group1Item1Sub2.contentInsets = NSDirectionalEdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5)
        
        let group1 = NSCollectionLayoutGroup.horizontal(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)), subitems: [group1Item1Sub1,group1Item1Sub2])
        
        let containerGroup = NSCollectionLayoutGroup.vertical(layoutSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension:  .fractionalWidth(1/2)), subitems: [ group1])

        let section = NSCollectionLayoutSection(group: containerGroup)
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
        
        
    }
}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 72
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
//        let imageView = UIImageView(frame: cell.frame)
//        imageView.image = UIImage(named: "\(indexPath.row + 1)")
//        imageView.contentMode = .scaleToFill
//        cell.add(view: imageView, left: 0, right: 0, top: 0, bottom: 0)
        cell.backgroundColor = .random
        return cell
    }
}

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random(in: 0.4...1),
                       green: .random(in: 0.4...1),
                       blue: .random(in: 0.4...1),
                       alpha: 1)
    }
}

extension UIView {
    func add(view: UIView, left: CGFloat, right: CGFloat, top: CGFloat, bottom: CGFloat) {
        
        view.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(view)
        
        view.leftAnchor.constraint(equalTo: self.leftAnchor, constant: left).isActive = true
        view.rightAnchor.constraint(equalTo: self.rightAnchor, constant: right).isActive = true
        
        view.topAnchor.constraint(equalTo: self.topAnchor, constant: top).isActive = true
        view.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: bottom).isActive = true
        
    }
}
