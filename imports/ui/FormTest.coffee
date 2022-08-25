import React, {useState} from 'react'
import SimpleSchema from 'simpl-schema'
import SimpleSchema2Bridge from 'uniforms-bridge-simple-schema-2'
import {ManagedForm} from 'meteor/janmp:sdui'
import {AutoForm} from 'meteor/janmp:sdui'

allowedValues = [1..10].map (i) -> "Option #{i}"

Option = (props) ->
  <div>
    <pre>{JSON.stringify props.data, null, 2}</pre>
  </div>

schema = new SimpleSchema
  select:
    type: String
    allowedValues: allowedValues
    uniforms:
      components: {Option}
  multiSelect:
    label: 'Multiple selections with react-functional-select'
    type: Array
    uniforms:
      checkboxes: false
  'multiSelect.$':
    type: String
    allowedValues: allowedValues
  string: String
  number: Number
  date: Date
  bool: Boolean
  hobbies:
    type: Array
  'hobbies.$':
    type: Object
  'hobbies.$.Name': String
  'hobbies.$.Since': Date

freshModel =
  select: 'Option 1'
  multiSelect: ['Option 1', 'Option 2']
  hobbies: [
  ]

schemaBridge = new SimpleSchema2Bridge schema


export FormTest = ->
  [model, setModel] = useState freshModel
  
  onSubmit = (d) ->
    console.log 'submit', d
    setModel d
  
  <div className="h-screen bg-gray-100 p-4 overflow-y-scroll">

    <h1>Test</h1>
    
    <div className="bg-white border shadow-xl border-gray-300 rounded my-4 p-4">
      <ManagedForm
        schemaBridge={schemaBridge}
        model={model}
        onSubmit={onSubmit}
      />
    </div>

    <div className="bg-white border hover:shadow-lg border-gray-300 rounded p-4">
      <button
        className="bg-danger! text-white"
        onClick={-> setModel freshModel}>reset model</button>
      <pre>{JSON.stringify model, null, 2}</pre>
    </div>
  </div>