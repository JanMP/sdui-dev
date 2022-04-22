import React from 'react'
import {Fill, BottomResizable, RightResizable, LeftResizable} from 'react-spaces'

handleRender = (props) ->
  unless props.key in ["top", "bottom", "left", "right"]
    return null
  [transform, rx, ry] =
    if props.key in ["top", "bottom"]
      console.log props
      ["translateY(-10px)", "14", "10"]
    else
      ["translateY(50%) translateY(-12px)", "10", "14"]
  <div
    {props...}
    style={{
      display: "flex",
      justifyContent: "center",
    }}
  >
    <div
      style={{
        position: "relative",
        transform: transform,
      }}
    >
      <svg
        xmlns="http://www.w3.org/2000/svg"
        width="24"
        height="24"
        viewBox="-12 -12 24 24"
        fill="currentColor"
      >
        <ellipse
          cx="0" cy="0" rx={rx} ry={ry}
        />
      </svg>
    </div>
  </div>

export CustomHandleTest = ->
  <Fill>
    <Fill>
      <LeftResizable
        className="bg-green-100"
        size="50%"
        handleRender={handleRender}
      />
    </Fill>
    <BottomResizable
      className="bg-red-100"
      size="50%"
      handleRender={handleRender}
    >
      <RightResizable
        className="bg-blue-100"
        size="50%"
        handleRender={handleRender}
      />
    </BottomResizable>
  </Fill>
