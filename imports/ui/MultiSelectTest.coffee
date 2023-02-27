import React, {useState} from 'react'
import {MultiSelect} from 'primereact/multiselect'

export MultiSelectTest = ->
  [value, setValue] = useState []

  options = [
    {label: 'Option 1', value: {id: 1, name: 'Option 1', code: 'OPT1'}}
    {label: 'Option 2', value: {id: 2, name: 'Option 2', code: 'OPT2'}}
    {label: 'Option 3', value: {id: 3, name: 'Option 3', code: 'OPT3'}}
  ]

  <div className="p-4">
    <div className="p-4 border border-secondary-400 rounded">
      <MultiSelect
        value={value}
        options={options}
        onChange={(e) -> setValue e.value}
        display="chip"
      />
    </div>
    <div className="p-4 border border-secondary-400 rounded">
      <pre>{JSON.stringify {value, options}, null, 2}</pre>
    </div>
  </div>
