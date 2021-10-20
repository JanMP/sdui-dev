import React, {useState} from 'react';
import {AutoForm} from 'meteor/janmp:sdui-forms';
import tw from '/imports/ui/twind'
import SimpleSchema from 'simpl-schema'
import SimpleSchema2Bridge from 'uniforms-bridge-simple-schema-2'

allowedValues = [1..10].map (i) -> "Option #{i}"

schema = new SimpleSchema
  Select:
    type: String
    allowedValues: allowedValues
  MultiSelect:
    type: Array
    uniforms:
      checkbox: true
  'MultiSelect.$':
    type: String
    allowedValues: allowedValues
  Hobbies:
    type: Array
    required: true
  'Hobbies.$':
    type: Object
  'Hobbies.$.Name': String
  'Hobbies.$.Since': Date

freshModel =
  Select: 'Option 1'
  MultiSelect: ['Option 1', 'Option 2']

schemaBridge = new SimpleSchema2Bridge schema

export default FormTest = ->
  
  [model, setModel] = useState freshModel
  <div className={tw 'h-screen bg-gray-100'}>
    
    <div className={tw "bg-red-100 border border-gray-300 rounded m-2 p-2"}>
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