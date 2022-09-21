import React from 'react'
import {Fill, BottomResizable, RightResizable, LeftResizable} from 'react-spaces'

import IframeResizer from 'iframe-resizer-react'


export IframeTest = ->
  <Fill>
    <LeftResizable
      size="50%"
    >
      <IframeResizer
        src="http://localhost:8080"
        heightCalculationMethod="lowestElement"
        title="test"
        style={width: '1px', minWidth: '100%'}
      />
    </LeftResizable>
  </Fill>
