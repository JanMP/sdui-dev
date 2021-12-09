import React from 'react'
import {useTw} from 'meteor/janmp:sdui'

export default ->

  tw = useTw()
  
  <div className={tw"m-1 p-2 rounded border border-red-300"}>
    <h1>Test</h1>
    <a href="https://google.com">Google</a>
    <div className="fnord">Test</div>
    <button>Test</button>
  </div>