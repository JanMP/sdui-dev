import { Accounts } from 'meteor/accounts-base';
import React from 'react';
import {LoginForm, SetPasswordForm} from 'meteor/janmp:sdui-roles';

import { BrowserRouter as Router, Switch, Route, useParams } from 'react-router-dom';

const ResetPasswordPage = () => {
  let {token} = useParams()
  return (
    <div>
      <div>{token}</div>
      <SetPasswordForm token={token}/>
    </div>
  )
}

const Desktop = () => {
  return (
    <div className="h-screen flex flex-col">
      <Router>
        <div className="flex-grow overflow-y-auto">
          <Switch>
            <Route path="/reset-password/:token">
              <ResetPasswordPage/>
            </Route>
            <Route path="/">
              <LoginForm allowResetPassword/>
            </Route>
          </Switch>
        </div>
      </Router>
    </div>
  )
}

export default Desktop

