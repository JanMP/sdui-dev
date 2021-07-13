import { Meteor } from 'meteor/meteor';
import { Accounts } from 'meteor/accounts-base'
import '/imports/api/api'
Accounts.urls.resetPassword = (token) => Meteor.absoluteUrl('reset-password/' + token)
Meteor.startup(() => {
  console.log('Meteor startup')
});
