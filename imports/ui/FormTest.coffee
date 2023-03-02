import React, {useState} from 'react'
import SimpleSchema from 'simpl-schema'
import SimpleSchema2Bridge from 'uniforms-bridge-simple-schema-2'
import {ManagedForm, LongTextField} from 'meteor/janmp:sdui'
import {Button} from 'primereact/button'


schema = new SimpleSchema
  Select:
    type: String
    allowedValues: ['left', 'center', 'right']
    defaultValue: 'center'
  Zeichenkette:
    type: String
  Bool:
    type: Boolean
    defaultValue: true
  ArrayOfObjects:
    type: Array
    min: 1
  'ArrayOfObjects.$':
    type: Object
  'ArrayOfObjects.$.Name':
    type: String
  'ArrayOfObjects.$.DateStarted':
    type: Date

freshModel = {}

schemaBridge = new SimpleSchema2Bridge schema


export FormTest = ->
  [model, setModel] = useState freshModel
  
  onSubmit = (d) ->
    console.log 'submit', d
    setModel d
  
  <div className="h-screen bg-gray-100 p-4 overflow-y-scroll">
    <div className="bg-white border shadow-xl border-gray-300 rounded my-4 p-4">
      <ManagedForm
        schemaBridge={schemaBridge}
        model={model}
        onSubmit={onSubmit}
        showTimeSelect
      />
    </div>

    <div className="bg-white border hover:shadow-lg border-gray-300 rounded p-4">
      <Button
        onClick={-> setModel freshModel}
        label="Reset"
      />
      <pre>{JSON.stringify model, null, 2}</pre>
    </div>
  </div>
