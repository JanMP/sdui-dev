import React, {useState} from 'react'
import {useTw} from 'meteor/janmp:sdui'
import SimpleSchema from 'simpl-schema'
import SimpleSchema2Bridge from 'uniforms-bridge-simple-schema-2'
import {AutoForm} from 'uniforms-unstyled'

allowedValues = [1..10].map (i) -> "Option #{i}"

schema = new SimpleSchema
  select:
    type: String
    allowedValues: allowedValues
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

  tw = useTw()
  [model, setModel] = useState freshModel
  
  
  <div className={tw 'h-screen bg-gray-100 p-4 overflow-y-scroll'}>

    <h1>Test</h1>
    
    <div className={tw "bg-white border shadow-xl border-gray-300 rounded my-4 p-4"}>
      <AutoForm
        schema={schemaBridge}
        model={model}
        onSubmit={setModel}
      />
    </div>

    <div className={tw "bg-white border hover:shadow-lg border-gray-300 rounded p-4"}>
      <button
        className={tw 'bg-danger! text-white'}
        onClick={-> setModel freshModel}>reset model</button>
      <pre>{JSON.stringify model, null, 2}</pre>
    </div>
  </div>