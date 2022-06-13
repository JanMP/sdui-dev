import React, {useState} from 'react'
import {MarkdownEditor, MarkdownDisplay, useSession} from 'meteor/janmp:sdui'
import {Fill, Custom, AnchorType} from 'react-spaces'
import {AutoListTest} from './AutoListTest.coffee'


export MarkdownTest = ->

  [value, setValue] = useSession 'markdown', '# Markdown Test'

  <Fill>
    <Custom
      anchor={AnchorType.Top}
      anchorSize={200}
      resizable={true}
    >
      <MarkdownDisplay
        markdown={value}
        contentClass="prose"
      />
    </Custom>
    <Fill>
      <MarkdownEditor
        value={value}
        onChange={setValue}
        editorWidth={"100%"}
        editorHeight={"100%"}
      />
    </Fill>
  </Fill>