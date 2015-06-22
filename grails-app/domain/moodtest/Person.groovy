package moodtest

class Person {

    String login
    Date lastVisit
    Integer result

    static constraints = {
        login unique: true
    }
}
