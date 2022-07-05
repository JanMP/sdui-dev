import {Meteor} from 'meteor/meteor'
import {Accounts} from 'meteor/accounts-base'
import React from 'react'
import {ViewPort, Top, Fill, Custom} from 'react-spaces'
import {useTracker} from 'meteor/react-meteor-data'
import {FormTest} from './FormTest.coffee'
import {ActionButtonTest} from './ActionButtonTest.coffee'
import {AutoTableTest} from './AutoTableTest.coffee'
import {AutoListTest} from './AutoListTest.coffee'
import {MarkdownTest} from './MarkdownTest.coffee'
import {ContentEditorTest} from './ContentEditorTest.coffee'
import {UserTableTest} from './UserTableTest.coffee'
import {LoginPage} from './LoginPage.coffee'
import {CustomHandleTest} from './CustomHandleTest.coffee'
import {FileListTest} from './FileListTest.coffee'
import {FileSelectTest} from './FileSelectTest.coffee'

import {BrowserRouter as Router, Routes, Route, useParams, Link} from 'react-router-dom'

# ResetPasswordPage = ->
#   {token} = useParams()
#   return (
#     <div>
#       <SetPasswordForm token={token} />
#     </div>
#   )

Menu = ->

  <div className="p-2 shadow flex justify-around">
    <Link to="/form">forms</Link>
    <Link to="/button">button</Link>
    <Link to="/table">table</Link>
    <Link to="/list">list</Link>
    <Link to="/markdown">md</Link>
    <Link to="/content-editor">content</Link>
    <Link to="/user-table">user-table</Link>
    <Link to="/login-page">login</Link>
    <Link to="/custom-handle">handle</Link>
    <Link to="/files">files</Link>
    <Link to="/file-select">file-select</Link>
  </div>


Fnord = ->

  <div className="bg-green-100 p-4">Fnord</div>


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
          <Route path="/content-editor" element={<ContentEditorTest/>}/>
          <Route path="/user-table" element={<UserTableTest/>}/>
          <Route path="/login-page" element={<LoginPage/>}/>
          <Route path="/custom-handle" element={<CustomHandleTest/>}/>
          <Route path="/files" element={<FileListTest/>}/>
          <Route path="/file-select" element={<FileSelectTest/>}/>
        </Routes>
      </Fill>
    </ViewPort>
  </Router>
 

