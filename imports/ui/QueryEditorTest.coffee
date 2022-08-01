import React, {useState, useEffect} from 'react'
import {QueryEditor, queryUiObjectToQuery} from 'meteor/janmp:sdui'
import {SimpleSchema2Bridge} from 'uniforms-bridge-simple-schema-2'
import SimpleSchema from 'simpl-schema'
import {Fill} from 'react-spaces'
import testQuery from './TestQuery.json'

SimpleSchema.extendOptions ['QueryEditor']



ListComponent = ->
  <span>ListComponent from Schema</span>

schema = new SimpleSchema
  a: String
  b:
    type: Number
    QueryEditor:
      inListField:
        type: String
        allowedValues: ['Liste 1', 'Liste 2']
  c:
    type: String
    QueryEditor:
      inListField:
        type: String
        allowedValues: ['A', 'B', 'C']
  subDoc:
    type: Object
    label: 'Subdoc™'
  'subDoc.x': Number
  'subDoc.y': Number

bridge = new SimpleSchema2Bridge schema

listen =
  b:
    'Liste 1': [1,2,3]
    'Liste 2': [4,5,6]
  c:
    A: ['Auto', 'Ameise', 'Amerika']
    B: ['Baumeister', 'Bob', 'Banana']
    C: ['Chaos', 'Chatbot', 'Chilli']

getList = ({subject,predicate,object}) ->
  console.log {subject,predicate,object}
  listen[subject]?[object.value] ? []


export QueryEditorTest = ->

  [queryUiObject, setQueryUiObject] = useState testQuery
  [query, setQuery] = useState 1

  useEffect ->
    if queryUiObject?
      setQuery queryUiObjectToQuery {queryUiObject, getList}
  , [queryUiObject]


  <Fill scrollable>
    <QueryEditor
      rule={queryUiObject}
      bridge={bridge}
      showRule={true}
      onChange={setQueryUiObject}
    />
    <div>
      <pre>{JSON.stringify queryUiObject, null, 2}</pre>
    </div>
    <div>
      <pre>{JSON.stringify query, null, 2}</pre>
    </div>
  </Fill>