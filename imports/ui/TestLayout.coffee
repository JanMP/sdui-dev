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
import {MultiSelectTest} from './MultiSelectTest.coffee'
import {useCurrentUserIsInRole} from 'meteor/janmp:sdui'
import {TabMenu} from 'primereact/tabmenu'

import {BrowserRouter as Router, Routes, Route, useLocation, useNavigate, Link} from 'react-router-dom'

Menu = ->
  canDo = useCurrentUserIsInRole 'canEditRowsWithALessThan20'
  navigate = useNavigate()
  {pathname} = useLocation()

  menuItems = [
    path: "/button", label: "button"
  ,
    path: "/form", label: "forms"
  ,
    path: "/multi-select-test", label: "multi-select"
  ,
    path: "/query-editor", label: "query-editor"
  ,
    path: "/content-editor", label: "content"
  ,
    path: "/list", label: "list"
  ,
    path: "/table", label: "table"
  ,
    path: "/user-table", label: "user-table"
  ,
    path: "/login-page", label: "login"
  ]

  activeIndex = menuItems.findIndex (item) -> item.path is pathname

  <TabMenu
    model={menuItems}
    activeIndex={activeIndex}
    onTabChange={(e) -> navigate(e.value.path)}
  />


export TestLayout = ->

  <Router>
    <ViewPort>
      <Top size={50}><Menu/></Top>
      <Fill>
        <Routes>
          <Route path="/content-editor" element={<SdContentEditorTest/>}/>
          <Route path="/form" element={<FormTest />}/>
          <Route path="/multi-select-test" element={<MultiSelectTest/>}/>
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
         ###}
        </Routes>
      </Fill>
    </ViewPort>
  </Router>
 

