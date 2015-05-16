//
//  FormViewController.swift
//  ipadToDoList
//
//  Created by Idris Jafer on 5/16/15.
//  Copyright (c) 2015 Wrme. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var gender: UISwitch!
    
    @IBOutlet weak var age: UISlider!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        UISwitch.appearance().onTintColor=UIColor.redColor()
        UISwitch.appearance().tintColor=UIColor.blueColor()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ageChanged(sender: AnyObject, forEvent event: UIEvent) {
        
        //ageLabel.text=(age.value as! Int) as! String;
       /* let s = NSString(format: "%2f", age.value)
        ageLabel.text=s as String*/
        
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
