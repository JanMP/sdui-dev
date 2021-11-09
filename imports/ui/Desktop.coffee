import {Meteor} from 'meteor/meteor'
import {Accounts} from 'meteor/accounts-base'
import React from 'react'
import {useTracker} from 'meteor/react-meteor-data'
import {MeteorMethodButton} from 'meteor/janmp:sdui'
import FormTest from './FormTest'
import tw from '/imports/ui/twind'

import {BrowserRouter as Router, Switch, Route, useParams} from 'react-router-dom'
import {faVial} from '@fortawesome/free-solid-svg-icons/faVial'


ContentEditorClassNames =
  wrapper: tw"h-full grid grid-cols-3 gap-4"
  list:
    wrapper: tw"border bg-blue-100"
  editor:
    wrapper: tw"border bg-green-100"
  display:
    wrapper: tw"border bg-red-100"
    content: tw"prose m-2 p-4 bg-white rounded-lg"

ResetPasswordPage = ->
  {token} = useParams()
  return (
    <div>
      <SetPasswordForm token={token} />
    </div>
  )


export default ->

  isLoggedIn = useTracker -> Meteor.userId()?

  # unless isLoggedIn
  #   return (
  #     <div>
  #       <LoginForm allowResetPassword />
  #     </div>
  #   )
 

  <div className={tw "h-screen flex flex-col"}>
    <Router>
      <div className={tw "flex-grow overflow-y-hidden"}>
        <Switch>
          <Route path="/form-test">
            <FormTest />
          </Route>
          <Route path="/button">
            <div className={tw "m-8"}>
              <MeteorMethodButton
                method="MeteorMethodButtonTest.logTestString"
                data={{testString:"Test 123"}}
                confirmation="Ehrlich?!"
                label="Test"
                icon={faVial}
                buttonClass="primary"
                successMsg="Erfolg, Jubel!"
              />
            </div>
          </Route>
        </Switch>
      </div>
    </Router>
  </div>

