import React, {useState} from 'react'
import {AutoForm} from 'meteor/janmp:sdui'
import {tw} from '/imports/ui/twind.coffee'
import SimpleSchema from 'simpl-schema'
import SimpleSchema2Bridge from 'uniforms-bridge-simple-schema-2'

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
  
  
  <div className={tw 'h-screen bg-gray-100'}>
    
    <div className={tw "bg-white border border-gray-300 rounded m-2 p-2"}>
      <AutoForm
        schema={schemaBridge}
        model={model}
        onSubmit={setModel}
      />
    </div>

    <div className={tw "bg-white border border-gray-300 rounded m-2 p-2"}>
      <button
        className={tw 'bg-red-500 text-white'}
        onClick={-> setModel freshModel}>reset model</button>
      <pre>{JSON.stringify model, null, 2}</pre>
    </div>
  </div>