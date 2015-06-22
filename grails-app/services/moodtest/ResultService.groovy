package moodtest

import grails.transaction.Transactional

@Transactional
class ResultService {

    def getResult(Integer result) {
        if (result > 12) {
            return "Severely depressed"
        } else {
            return "No depression likely"
        }
    }
}
