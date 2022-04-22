import React from 'react'


export FileUpload = ->

  send = ->
    if (file = document.getElementById('file-input')?.files?[0])?
      console.log "filename: #{file.name}"

  <div className="m-1 p-2 text-center">
    <input id="file-input" type="file" />
    <button onClick={send}>send</button>
  </div>