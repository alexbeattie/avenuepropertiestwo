//
//  ListingCollectionViewController.swift
//  alamo
//
//  Created by Alex Beattie on 9/12/17.
//  Copyright © 2017 Alex Beattie. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import CoreLocation
import MapKit

private let reuseIdentifier = "Cell"

class ListingCollectionViewController: UICollectionViewController {
    
    var listings = [Listing]()
    var listingDataModel = [Listing]()
    
    @IBOutlet weak var listingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = collectionView!.frame.width / 3
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)
        
        findAllListings { (success) in
            
            
            
        }
        
//        updateListings(json: JSON)
        // Do any additional setup after loading the view.
    }

  
    var listingId: String?
    var remarks: String?
    var listPrice:Int?
    
    func findAllListings(completion: @escaping CompletionHandler) {
        Alamofire.request("\(AUTH_CODES)\(BASE_URL)\(ENDPOINT)").validate(contentType: ["application/json"]).responseJSON { response in
            if response.result.error == nil {
                
                guard let data = response.data else { return }
                
                do {
                    
                    self.listings = try JSONDecoder().decode([Listing].self, from: data)
//                    let listingJSON : JSON  = JSON(response.result.value!)
//                    print(listingJSON)
//                    if let json = response.result.value as? Dictionary<String, AnyObject> {
//                        print(json)
//                        let alistings = json["agent"] as? [String: Any]
//                        print("\(alistings)")

                    if let json = response.result.value  {
//                        print("JSON: \(json)")
                        for listing in self.listings {
                            
                            
                            let theListing = Listing(listingId: self.listingId, remarks: nil, listPrice: self.listPrice)
                            print(listing)
                            
                        }
                        
                    }
                    
                    
                } catch let error {
                    
                    debugPrint(error as Any)
                }
                //                print(self.listings)
                
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
        }
    }
    
 

    func updateListings(json: JSON) {
//        let result = response.result
//        if let dict = result.value as? Dictionary<String, AnyObject> {
//        if let theRemark = dict["remarks"] as? String {
//            let theListing = Listing(remarks: theRemark)
//            self.listingDataModel.append(theListing)
//            print("The remark is: \(theRemark)")
//
//            }
//        }
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
//    */

    // MARK: UICollectionViewDataSource

 


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return listingDataModel.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Listing", for: indexPath) as! ListingCollectionVC
    
        // Configure the cell
       
        
        
        
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
