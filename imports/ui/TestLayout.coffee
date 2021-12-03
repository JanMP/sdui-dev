import {Meteor} from 'meteor/meteor'
import {Accounts} from 'meteor/accounts-base'
import React from 'react'
import {ViewPort, Top, Fill} from 'react-spaces' 
import {useTracker} from 'meteor/react-meteor-data'
import {FormTest} from './FormTest.coffee'
import {ActionButtonTest} from './ActionButtonTest.coffee'
import {AutoTableTest} from './AutoTableTest.coffee'
import {AutoListTest} from './AutoListTest.coffee'
import {MarkdownTest} from './MarkdownTest.coffee'
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
  <div className={tw"p-2 shadow flex justify-around"}>
    <Link to="/form">Uniforms</Link>
    <Link to="/button">ActionButton</Link>
    <Link to="/table">AutoTable</Link>
    <Link to="/list">AutoList</Link>
    <Link to="/markdown">md</Link>
  </div>

Fnord = ->
  <div className={tw"bg-green-100 p-4"}>Fnord</div>

export TestLayout = ->

  
  <Router>
    <ViewPort>
      <Top size={45}><Menu/></Top>
      <Fill>
        <Routes>
          <Route path="/fnord" element={<Fnord />}/>
          <Route path="/form" element={<FormTest />}/>
          <Route path="/button" element={<ActionButtonTest/>}/>
          <Route path="/table" element={<AutoTableTest/>}/>
          <Route path="/list" element={<AutoListTest/>}/>
          <Route path="/markdown" element={<MarkdownTest/>}/>
        </Routes>
      </Fill>
    </ViewPort>
  </Router>
 

