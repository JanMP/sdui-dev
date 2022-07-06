import React, {useState, useEffect, useRef} from 'react'
import {SdEditor, MarkdownDisplay, useSession} from 'meteor/janmp:sdui'
import {Fill, Custom, AnchorType} from 'react-spaces'
import {AutoListTest} from './AutoListTest.coffee'


export MarkdownTest = ->

  instance = useRef null
  editor = instance?.current?.editor
  [value, setValue] = useSession 'markdown', '# Markdown Test'



  <Fill>
    <Custom
      anchor={AnchorType.Top}
      anchorSize={200}
      resizable={true}
      scrollable={true}
    >
      <MarkdownDisplay
        markdown={value}
        contentClass="prose"
        instance={instance}
      />
    </Custom>
    <Fill>
      <SdEditor
        value={value}
        onChange={setValue}
        editorWidth={"100%"}
        editorHeight={"100%"}
      />
    </Fill>
  </Fill>