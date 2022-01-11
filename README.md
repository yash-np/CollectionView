# CollectionView
UICollectionView using UICollectionViewCompositionalLayout

1. create UICollectionViewCompositionalLayout and add NSCollectionLayoutSection
2. NSCollectionLayoutSection create with multiple NSCollectionLayoutGroup
3. NSCollectionLayoutGroup set as horizontal or vertical
4. NSCollectionLayoutGroup set multiple sub NSCollectionLayoutGroup
5. NSCollectionLayoutGroup set multiple  NSCollectionLayoutItem
6. UICollectionView set collectionViewLayout 


UICollectionView with two column and mulitple row without UICollectionViewLayout size
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
    
        
        
   
    ![Optional Text](../CollectionView/screenshots/Default_UICollectionView.png)
    ![Alt text](/CollectionView/screenshots/Default_UICollectionView.png?raw=true "Two column and mulitple row")
    ![Optional Text](../main/CollectionView/screenshots/Instagram_Explore_.png)
    ![Optional Text](../main/screenshots/Instagram_Explore.png)
    ![Optional Text](../main/CollectionView/screenshots/Instagram_Exlore_new.png)
![ScreenShot](/screenshots/Instagram_Exlore_new.png)
![alt text](https://github.com/yash-np/CollectionView/blob/master/CollectionViewDemo/screenshots/Default.png)
![Default](https://github.com/yash-np/CollectionView/blob/master/CollectionViewDemo/screenshots/Default.png)
