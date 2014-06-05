//
//  TaskMenager.swift
//  To do List
//
//  Created by Marko Budal on 05/06/14.
//  Copyright (c) 2014 Goin Developer. All rights reserved.
//

import UIKit

var taskMgr: TaskMenager = TaskMenager()

struct task{
    var name = ""
    var desc = ""
}

class TaskMenager: NSObject {
    
    var tasks = task[]()
    
    func addTask(name: String, desc:String){
        tasks.append(task(name:name, desc:desc))
    }
    

}
