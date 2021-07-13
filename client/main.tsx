import { Meteor } from 'meteor/meteor';
import { Accounts } from 'meteor/accounts-base'
import React from 'react';
import { render } from 'react-dom';

import '/imports/api/api'
import '/imports/ui/main'
import '/imports/ui/fixedReactVirtualized'
import { App } from '/imports/ui/App'
import FormTest from '/imports/ui/FormTest'

import Modal from 'react-modal'
Modal.setAppElement('#react-target')

Accounts.onResetPasswordLink((token, done) => console.log({token}))

Meteor.startup(() => {
  render(<App />, document.getElementById('react-target'));
});
