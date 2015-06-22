package moodtest

import grails.transaction.Transactional

@Transactional
class QuestionService {

    def addQuestion(String question) {
        new Question(question: question).save()
    }

    def findQuestionById(Integer id = 1) {
        Question.findById(id);
    }

    def deleteQuestionById(Integer id) {
        Question.findById(id).delete()
    }

    def getQuantityOfQuestions() {
        Question.findAll().size()
    }

    def findAllQuestions() {
        Question.findAll()
    }

}
