//
//  AnimalType.swift
//  Personal_quiz
//
//  Created by Vlad Zinevich on 26.05.2021.
//

enum AnimalType: String {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐇"
    case turtle = "🐢"
    
    var difinition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себя людьми, с которыми Вам хорошо, и готовы всегда прийти на помощь."
        case .cat:
            return "Вы сами себе на уме, любите гулять в одиночку"
        case .rabbit:
            return "Вам нравится все мягкое, Вы здоровы и полны энергии"
        case .turtle:
            return "Ваша сила в мудрости, медленный и вдумчивый выигрывает на дальних дистанциях"
        }
    }
}
