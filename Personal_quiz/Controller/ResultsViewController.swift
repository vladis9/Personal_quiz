//
//  ResultsViewController.swift
//  Personal_quiz
//
//  Created by Vlad Zinevich on 31.05.2021.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var resultsAnswerLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    
    // MARK: Public properties
    var responses: [Answer]!
    
    override func viewDidLoad() {
        super .viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResults()
    }
    
    private func updateResults() {
        var frequencyOfAnimals: [AnimalType: Int] = [:]
        let animals = responses.map { $0.type }
        
        for animal in animals {
            frequencyOfAnimals[animal] = (frequencyOfAnimals[animal] ?? 0) + 1
        }
        
        let sortedFrequencyOfAnimals = frequencyOfAnimals.sorted { $0.value > $1.value }
        guard let mostFrequencyAnimal = sortedFrequencyOfAnimals.first?.key else { return }
        
        updateUI(with: mostFrequencyAnimal)
    }
    
    private func updateUI(with animal: AnimalType) {
        resultsAnswerLabel.text = "Вы \(animal.rawValue)"
        resultDefinitionLabel.text = "\(animal.difinition)"
    }
}
