import {Meteor} from 'meteor/meteor'
import {Accounts} from 'meteor/accounts-base'
import React from 'react'
import {ViewPort, Top, Fill, Custom} from 'react-spaces'
import {useTracker} from 'meteor/react-meteor-data'
import {FormTest} from './FormTest.coffee'
import {ActionButtonTest} from './ActionButtonTest.coffee'
import {SdTableTest} from './SdTableTest.coffee'
import {SdListTest} from './SdListTest.coffee'
import {MarkdownTest} from './MarkdownTest.coffee'
import {SdContentEditorTest} from './SdContentEditorTest.coffee'
import {UserTableTest} from './UserTableTest.coffee'
import {LoginPage} from './LoginPage.coffee'
import {CustomHandleTest} from './CustomHandleTest.coffee'
import {QueryEditorTest} from './QueryEditorTest.coffee'
import {SdDocumentSelectTest} from './SdDocumentSelectTest.coffee'
# import {IframeTest} from './IframeTest.coffee'

import {useCurrentUserIsInRole} from 'meteor/janmp:sdui'

import {BrowserRouter as Router, Routes, Route, useParams, Link} from 'react-router-dom'

Menu = ->
  canDo = useCurrentUserIsInRole 'canEditRowsWithALessThan20'

  <div className="p-2 shadow flex justify-around">
    
    <Link to="/button">button</Link>
    <Link to="/form">forms</Link>
    <Link to="/query-editor">query-editor</Link>
    <Link to="/content-editor">content</Link>
    <Link to="/list">list</Link>
    <Link to="/table">table</Link>
    <Link to="/user-table">user-table</Link>
    <div>{if canDo then '+' else '-'}</div>
    <Link to="/login-page">login</Link>
    {###
    <Link to="/iframe">iframe</Link>
    <Link to="/document-select">document-select</Link>
    <Link to="/custom-handle">handle</Link>
    <Link to="/markdown">md</Link>
    ###}
  </div>


export TestLayout = ->

  <Router>
    <ViewPort>
      <Top size={45}><Menu/></Top>
      <Fill>
        <Routes>
          <Route path="/content-editor" element={<SdContentEditorTest/>}/>
          <Route path="/form" element={<FormTest />}/>
          <Route path="/button" element={<ActionButtonTest/>}/>
          <Route path="/table" element={<SdTableTest/>}/>
          <Route path="/list" element={<SdListTest/>}/>
          <Route path="/markdown" element={<MarkdownTest/>}/>
          <Route path="/user-table" element={<UserTableTest/>}/>
          <Route path="/login-page" element={<LoginPage/>}/>
          <Route path="/custom-handle" element={<CustomHandleTest/>}/>
          <Route path="/query-editor" element={<QueryEditorTest/>}/>
          <Route path="/document-select" element={<SdDocumentSelectTest/>}/>
         {###
          <Route path="/iframe" element={<IframeTest/>}/>
         ###}
        </Routes>
      </Fill>
    </ViewPort>
  </Router>
 

