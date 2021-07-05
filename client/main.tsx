import { Meteor } from 'meteor/meteor';
import React from 'react';
import { render } from 'react-dom';

import '/imports/api/api'
import '/imports/ui/main'
import '/imports/ui/fixedReactVirtualized'
import { App } from '/imports/ui/App'

import Modal from 'react-modal'
Modal.setAppElement('#react-target')

Meteor.startup(() => {
  render(<App />, document.getElementById('react-target'));
});
