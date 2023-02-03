import React, { useEffect } from 'react'
import {connectFieldWithLabel} from 'meteor/janmp:sdui'
import DatePicker, {registerLocale, setDefaultLocale} from 'react-datepicker'
import de from 'date-fns/locale/de'

import "react-datepicker/dist/react-datepicker.css"

console.log de

registerLocale 'de', de
setDefaultLocale 'de'

CustomDateInput = ({value, onChange}) ->

  <DatePicker
    selected={value}
    onChange={onChange}
    showTimeSelect
    dateFormat="dd.MM.yy kk:mm"
  />

export CustomDateField = connectFieldWithLabel CustomDateInput
