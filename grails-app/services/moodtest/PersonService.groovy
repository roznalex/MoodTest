package moodtest

import grails.transaction.Transactional

@Transactional
class PersonService {

    def addPerson(String login, Integer result) {
        new Person(login: login, lastVisit: new Date(), result : result).save()
    }

    def findPerson(String login) {
        Person.findByLogin(login)
    }

    def deletePerson(String login) {
        Person.findByLogin(login).delete()
    }

    def findAll() {
        Person.findAll()
    }
}
