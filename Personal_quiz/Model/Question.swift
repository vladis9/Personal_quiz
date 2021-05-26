//
//  Question.swift
//  Personal_quiz
//
//  Created by Vlad Zinevich on 26.05.2021.
//

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

extension Question {
    static func getQuestions() -> [Question] {
        return [
            Question(text: "Какую пищу Вы предпочитаете?",
                     type: .single,
                     answers: [
                        Answer(text: "Стейк", type: .dog),
                        Answer(text: "Рыба", type: .cat),
                        Answer(text: "Морковь", type: .rabbit),
                        Answer(text: "Кукуруза", type: .turtle)
                ]
            ),
            Question(text: "Что вам нравится больше?",
                     type: .multiple,
                     answers: [
                        Answer(text: "Плавать", type: .dog),
                        Answer(text: "Спать", type: .cat),
                        Answer(text: "Обниматься", type: .rabbit),
                        Answer(text: "Есть", type: .turtle)
                ]
            ),
            Question(text: "Любите ли Вы поездки на машине?",
                     type: .range,
                     answers: [
                        Answer(text: "Ненавижу", type: .dog),
                        Answer(text: "Нервничаю", type: .cat),
                        Answer(text: "Не замечаю", type: .rabbit),
                        Answer(text: "Обожаю", type: .turtle)
                ]
            )
        ]
    }
}
