//
//  ViewController.swift
//  seminar_1
//
//  Created by Евгений Бухарев on 15.09.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(normalizeGrades())
        // Do any additional setup after loading the view.
    }

    func normalizeGrades() -> [String:Double]{
        iosNIS.students = [
            Student(grades: [4.1,5,6], fullName: "Leha"),
            Student(grades: [9,9,7.5], fullName: "Richars")
        ]
        var normGrades: Dictionary<String, Double> = [:]
        let maxAverage = iosNIS.getNormal()
        for student in iosNIS.students{
            normGrades[student.fullName] = (student.getGrade() / maxAverage) * 10
        }
        return normGrades
    }

}
