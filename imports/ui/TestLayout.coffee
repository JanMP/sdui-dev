import {Meteor} from 'meteor/meteor'
import {Accounts} from 'meteor/accounts-base'
import React from 'react'
import {useTracker} from 'meteor/react-meteor-data'
import {FormTest} from './FormTest.coffee'
import {MeteorMethodButtonTest} from './MeteorMethodButtonTest.coffee'
import {AutoTableTest} from './AutoTableTest.coffee'
import {AutoListTest} from './AutoListTest.coffee'
import {tw} from '/imports/ui/twind.coffee'

import {BrowserRouter as Router, Routes, Route, useParams, Link} from 'react-router-dom'

# ResetPasswordPage = ->
#   {token} = useParams()
#   return (
#     <div>
#       <SetPasswordForm token={token} />
#     </div>
#   )

Menu = ->
  <div className={tw "py-2 shadow flex justify-start children:ml-2"}>
    <Link to="/form">Uniforms</Link>
    <Link to="/button">MeteorMethodButton</Link>
    <Link to="/table">AutoTable</Link>
    <Link to="/list">AutoList</Link>
  </div>

Fnord = ->
  <div className={tw"bg-green-100 p-4"}>Fnord</div>

export TestLayout = ->

  <div className={tw "h-screen flex flex-col"}>
    <Router>
      <div className={tw "flex-grow overflow-y-hidden"}>
        <Menu/>
        <Routes>
          <Route path="/fnord" element={<Fnord />}/>
          <Route path="/form" element={<FormTest />}/>
          <Route path="/button" element={<MeteorMethodButtonTest/>}/>
          <Route path="/table" element={<AutoTableTest/>}/>
          <Route path="/list" element={<AutoListTest/>}/>

        </Routes>
      </div>
    </Router>
  </div>

