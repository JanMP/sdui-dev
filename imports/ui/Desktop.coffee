import {Meteor} from 'meteor/meteor'
import {Accounts} from 'meteor/accounts-base'
import React from 'react'
import {useTracker} from 'meteor/react-meteor-data'
import {LoginForm, SetPasswordForm, MeteorMethodButton} from 'meteor/janmp:sdui-forms'
import {MeteorDataAutoTable} from 'meteor/janmp:sdui-table'
import {props} from '/imports/api/AutoTableTest'
import QueryEditorTest from './QueryEditorTest'
import FormTest from './FormTest'
import {ContentEditor} from 'meteor/janmp:sdui-contenteditor'
import TwTest from './TwTest'
import tw from '/imports/ui/twind'

import {BrowserRouter as Router, Switch, Route, useParams} from 'react-router-dom'
import {faVial} from '@fortawesome/free-solid-svg-icons/faVial'


ContentEditorClassNames =
  wrapper: tw 'h-full bg-red-100 flex flex-col sm:flex-row justify-between'
  list:
    wrapper: tw 'border bg-blue-100 flex-grow'
  editor:
    wrapper: tw 'border bg-green-100 flex-grow'
  display:
    wrapper: tw 'border bg-red-100 flex-grow'

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
          <Route path="/reset-password/:token">
            <ResetPasswordPage />
          </Route>
          <Route path="/query-editor">
            <QueryEditorTest/>
          </Route>
          <Route path="/table">
            <MeteorDataAutoTable {...props}/>
          </Route>
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
          <Route path="/content-editor">
            <ContentEditor classNames={ContentEditorClassNames}/>
          </Route>
          <Route path="/">
            <TwTest />
          </Route>
        </Switch>
      </div>
    </Router>
  </div>

