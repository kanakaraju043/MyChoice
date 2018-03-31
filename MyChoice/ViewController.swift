//
//  ViewController.swift
//  MyChoice
//
//  Created by KANAKARAJU GANDREDDI on 12/25/17.
//  Copyright © 2017 Self. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var category1: UIButton!
    @IBOutlet weak var category2: UIButton!
    
    var category1Array:NSMutableArray?
    var category2Array:NSMutableArray?
    var category3Array:NSMutableArray?
    
    var variantsListArray:NSMutableArray?
    var exclusionListArray:NSMutableArray?

    var variantGroupsArray:NSMutableArray?

    

    @IBOutlet weak var category3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        


        NetworkManager.getDataFromServer { (data) in
            
            let variants:NSDictionary = (data.object(forKey: "variants") as! NSDictionary)
            self.variantsListArray = variants.object(forKey: "variant_groups") as? NSMutableArray
            self.exclusionListArray = variants.object(forKey: "exclude_list") as? NSMutableArray

            print(data)
            print(self.variantsListArray)
            print(self.exclusionListArray)
            print(variants)
            
            self.variantGroupsArray = NSMutableArray()
            self.category1Array = NSMutableArray()
            self.category2Array = NSMutableArray()
            self.category3Array = NSMutableArray()

            for item in self.variantsListArray!{
             
                self.variantGroupsArray?.add(item)
            }
            
            print(self.variantGroupsArray)
            
            
            let firstVariant:NSDictionary = self.variantGroupsArray?.object(at: 0) as! NSDictionary
            self.category1Array = firstVariant.object(forKey: "variations") as! NSMutableArray
            
            let secondVariant:NSDictionary = self.variantGroupsArray?.object(at: 1) as! NSDictionary
            self.category2Array = secondVariant.object(forKey: "variations") as! NSMutableArray
            
            let thridVariant:NSDictionary = self.variantGroupsArray?.object(at: 2) as! NSDictionary
            self.category3Array = thridVariant.object(forKey: "variations") as! NSMutableArray
            
        }
    
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func category3(_ sender: Any) {
        
        
    }
    
    @IBAction func category2(_ sender: Any) {
        
        
    }
    @IBAction func category1(_ sender: Any) {
        
        
    }
}

