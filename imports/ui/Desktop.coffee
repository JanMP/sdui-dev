import {Meteor} from 'meteor/meteor'
import {Accounts} from 'meteor/accounts-base'
import React from 'react'
import {useTracker} from 'meteor/react-meteor-data'
import FormTest from './FormTest.coffee'
import MeteorMethodButtonTest from './MeteorMethodButtonTest.coffee'
import tw from '/imports/ui/twind'

import {BrowserRouter as Router, Routes, Route, useParams, Link} from 'react-router-dom'

ResetPasswordPage = ->
  {token} = useParams()
  return (
    <div>
      <SetPasswordForm token={token} />
    </div>
  )

Menu = ->
  <div className={tw "py-2 shadow flex justify-start children:ml-2"}>
    <Link to="/form">Uniforms</Link>
    <Link to="/button">MeteorMethodButton</Link>
  </div>

export default ->

  <div className={tw "h-screen flex flex-col"}>
    <Router>
      <div className={tw "flex-grow overflow-y-hidden"}>
        <Menu/>
        <Routes>
          <Route path="/form" element={<FormTest />}/>
          <Route path="/button" element={<MeteorMethodButtonTest/>}/>
        </Routes>
      </div>
    </Router>
  </div>

