//
//  company.swift
//  jobps
//
//  Created by pramono wang on 12/11/16.
//  Copyright © 2016 fnu. All rights reserved.
//

import Foundation

class Company {
    var maternityLeave: String
    var opinion: String
    var a_woman: String
    var salary: String
    var rating_overall: String
    
    init(maternityLeave: String, opinion: String, a_woman:String, salary:String, rating_overall: String)
    {
        self.maternityLeave = maternityLeave
        self.opinion = opinion
        self.a_woman = a_woman
        self.salary = salary
        self.rating_overall = rating_overall
    }
}
