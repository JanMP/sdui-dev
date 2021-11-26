import React, {useState} from 'react'
import {MarkdownEditor, MarkdownDisplay, useTw} from 'meteor/janmp:sdui'
export MarkdownTest = ->

  [value, setValue] = useState '# Markdown Test'
  tw=useTw()

  <div className={tw"grid md:grid-cols-2 gap-2 flex-grow overflow-hidden"}>
    <div className={tw"border h-full md:order-last"}>
      <MarkdownDisplay
        markdown={value}
        contentClass="prose"
      />
    </div>
    <div className={tw"border h-max-full"}>
      <MarkdownEditor
        value={value}
        onChange={setValue}
        editorWidth={"100%"}
        editorHeight={"100%"}
      />
    </div>
  </div>