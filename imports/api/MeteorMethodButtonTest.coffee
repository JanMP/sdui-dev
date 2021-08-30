import {Meteor} from 'meteor/meteor'
import {ValidatedMethod} from 'meteor/mdg:validated-method'
import SimpleSchema from 'simpl-schema'

new ValidatedMethod
  name: 'MeteorMethodButtonTest.logTestString'
  validate:
    new SimpleSchema
      testString: String
    .validator()
  run: ({testString}) -> console.log "The test string is: '#{testString}'"

