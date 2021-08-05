import { Meteor } from 'meteor/meteor';
// import { Accounts } from 'meteor/accounts-base';
import React from 'react';
import { useTracker } from 'meteor/react-meteor-data';
import { LoginForm, SetPasswordForm } from 'meteor/janmp:sdui-forms';
import { MeteorDataAutoTable } from 'meteor/janmp:sdui-table';
import { props } from '/imports/api/AutoTableTest';
import QueryEditorTest from './QueryEditorTest'

import { BrowserRouter as Router, Switch, Route, useParams } from 'react-router-dom';
import FormTest from './FormTest'

const ResetPasswordPage = () => {
  let { token } = useParams();
  return (
    <div>
      <SetPasswordForm token={ token } />
    </div>
  );
};

const Desktop = () => {

  const isLoggedIn = useTracker(() => Meteor.userId() != null)


  if (!isLoggedIn) {
    return (
      <div>
        <LoginForm allowResetPassword />
      </div>
    );
  }

  return (
    <div className="h-screen flex flex-col">
      <Router>
        <div className="flex-grow overflow-y-hidden">
          <Switch>
            <Route path="/reset-password/:token">
              <ResetPasswordPage />
            </Route>
            <Route path="/query-editor">
              <QueryEditorTest/>
            </Route>
            <Route path="/table">
              <MeteorDataAutoTable {...props}/>
            </Route>
            <Route path="/">
              <div>Fnord baby! Fnord!</div>
            </Route>
          </Switch>
        </div>
      </Router>
    </div>
  );
};

export default Desktop;

