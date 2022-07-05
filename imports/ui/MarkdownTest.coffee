import React, {useState, useEffect, useRef} from 'react'
import {MarkdownEditor, MarkdownDisplay, useSession} from 'meteor/janmp:sdui'
import {Fill, Custom, AnchorType} from 'react-spaces'
import {AutoListTest} from './AutoListTest.coffee'


export MarkdownTest = ->

  instance = useRef null
  editor = instance?.current?.editor
  [value, setValue] = useSession 'markdown', '# Markdown Test'

  useEffect ->
    console.log instance
  , [instance]

  onChange = (value) ->
    console.log editor.getCursorPosition()
    setValue value

  insertText = ->
    editor.session.insert editor.getCursorPosition(), 'fnord'

  <Fill>
    <Custom
      anchor={AnchorType.Top}
      anchorSize={200}
      resizable={true}
      onClick={insertText}
    >
      <MarkdownDisplay
        markdown={value}
        contentClass="prose"
        instance={instance}
      />
    </Custom>
    <Fill>
      <MarkdownEditor
        instance={instance}
        value={value}
        onChange={onChange}
        editorWidth={"100%"}
        editorHeight={"100%"}
      />
    </Fill>
  </Fill>