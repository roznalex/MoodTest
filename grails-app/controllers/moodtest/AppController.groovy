package moodtest

class AppController {
    QuestionService questionService
    PersonService personService
    ResultService resultService

    def index() {
       return [view : "index"]
    }

    def test() {
        Integer questionNumber = params.questionNumber ? Integer.valueOf(params.questionNumber) : 0
        session.result = params.result ? session.result =+ Integer.valueOf(params.result) : 0

        if(questionNumber == questionService.getQuantityOfQuestions()) {
            render([view: "result", result: session.result])
        } else {
            return ([view: "test", question: questionService.findQuestionById(questionNumber + 1)])
        }
    }

    def result() {
        personService.addPerson(params.login, Integer.valueOf(params.result))
        def persons = personService.findAll()
        render(view: "score", model: [persons : persons, answer: resultService.getResult(Integer.valueOf(params.result))])
    }

    def score() {
        def persons = personService.findAll()
        render(view: "score", model: [persons : persons])
    }
}
