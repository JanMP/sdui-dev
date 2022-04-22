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
import {FileUpload} from './FileUpload.coffee'
import {useTw} from 'meteor/janmp:sdui'
import {BrowserRouter as Router, Routes, Route, useParams, Link} from 'react-router-dom'

# ResetPasswordPage = ->
#   {token} = useParams()
#   return (
#     <div>
#       <SetPasswordForm token={token} />
#     </div>
#   )

Menu = ->

  tw = useTw()

  <div className={tw"p-2 shadow flex justify-around"}>
    <Link to="/form">forms</Link>
    <Link to="/button">button</Link>
    <Link to="/table">table</Link>
    <Link to="/list">list</Link>
    <Link to="/markdown">md</Link>
    <Link to="/content-editor">content</Link>
    <Link to="/user-table">user-table</Link>
    <Link to="/login-page">login</Link>
    <Link to="/custom-handle">handle</Link>
    <Link to="/file-upload">upload</Link>
  </div>


Fnord = ->
  tw = useTw()

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
          <Route path="/content-editor" element={<ContentEditorTest/>}/>
          <Route path="/user-table" element={<UserTableTest/>}/>
          <Route path="/login-page" element={<LoginPage/>}/>
          <Route path="/custom-handle" element={<CustomHandleTest/>}/>
          <Route path="/file-upload" element={<FileUpload/>}/>
        </Routes>
      </Fill>
    </ViewPort>
  </Router>
 

