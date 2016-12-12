//
//  DetailViewController.swift
//  jobps
//
//  Created by pramono wang on 12/11/16.
//  Copyright © 2016 fnu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var addReviewButton: UIButton!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var companyNameLabel: UILabel!
    
    @IBOutlet weak var teamSizeLabel: UILabel!
    @IBOutlet weak var happinessLabel: UILabel!
    @IBOutlet weak var busyWorkLabel: UILabel!
    
    
    
    @IBOutlet weak var maturityLeaveLabel: UILabel!
    
    @IBOutlet weak var opinionLabel: UILabel!
    @IBOutlet weak var payGapLabel: UILabel!
    @IBOutlet weak var sizeWomanLabel: UILabel!
    
    
    var company:Company = Company(maternityLeave: "", opinion: "", a_woman: "", salary: "", rating_overall: "")
    var companyName: String = ""
    var info: Info = Info(size: "", happy: "", busyWork: "")
    override func viewDidLoad() {
        super.viewDidLoad()

        addReviewButton.layer.borderWidth = 2
        addReviewButton.layer.borderColor = UIColor(red: 255.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor

        segmentedControl.layer.borderColor = UIColor(red: 255.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0).cgColor
        
        segmentedControl.tintColor = UIColor(red: 255.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        

        
        
        companyNameLabel.text = companyName
        
        teamSizeLabel.text = info.size
        happinessLabel.text = info.happy
        busyWorkLabel.text = info.busyWork
        
        maturityLeaveLabel.text = company.maternityLeave
        opinionLabel.text = company.opinion
        payGapLabel.text = company.salary
        sizeWomanLabel.text = company.a_woman
        
        
        // Do any additional setup after loading the view.
    }

    
    
    override func viewWillAppear(_ animated: Bool) {
        let backButton: UIBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(back))
        self.navigationItem.leftBarButtonItem = backButton;
        super.viewWillAppear(animated);
    }
    
    func back() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
