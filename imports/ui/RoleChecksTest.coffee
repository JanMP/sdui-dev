import React from 'react'
import {useCurrentUserIsInRole, useScopesForCurrentUserInRole} from 'meteor/janmp:sdui'

export RoleChecksTest = ->

  isAdmin = useCurrentUserIsInRole 'admin'
  isEditor = useCurrentUserIsInRole role: 'editor', scope: 'test1'
  scopes = useScopesForCurrentUserInRole 'editor'

  displayObject = {isAdmin, isEditor, scopes}

  <div className="m-1 p-2 rounded bg-blue-100">
    <pre>{JSON.stringify displayObject, null, 2}</pre>
  </div>