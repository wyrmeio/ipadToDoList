//
//  AddViewController.swift
//  ipadToDoList
//
//  Created by Idris Jafer on 5/16/15.
//  Copyright (c) 2015 Wrme. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var notesTextView: UITextView!=UITextView()
    @IBOutlet weak var titleTextField: UITextField!=UITextField()
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func addButtonTapped(sender: AnyObject) {
        
        var userDefaults:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        var itemList:NSMutableArray? = userDefaults.objectForKey("itemList") as? NSMutableArray
        
        var dataSet:NSMutableDictionary = NSMutableDictionary()
        dataSet.setObject(titleTextField.text, forKey: "itemTitel")
        dataSet.setObject(notesTextView.text, forKey: "itemNote")
        
        if ((itemList) != nil){ // data already available
            var newMutableList:NSMutableArray = NSMutableArray();
            
            for dict:AnyObject in itemList!{
                newMutableList.addObject(dict as! NSDictionary)
            }
            
            userDefaults.removeObjectForKey("itemList")
            newMutableList.addObject(dataSet)
            userDefaults.setObject(newMutableList, forKey: "itemList")
            
            
        }else{ // This is the first todo item in the list
            userDefaults.removeObjectForKey("itemList")
            itemList = NSMutableArray()
            itemList!.addObject(dataSet)
            userDefaults.setObject(itemList, forKey: "itemList")
        }
        
        userDefaults.synchronize()
        
        //self.navigationController!.popToRootViewControllerAnimated(true)
        
        navigationController!.popToViewController(navigationController!.viewControllers[1] as! UIViewController, animated: true)

        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
