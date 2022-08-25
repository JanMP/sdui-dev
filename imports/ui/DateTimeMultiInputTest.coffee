import React, {useState} from 'react'
import SimpleSchema from 'simpl-schema'
import SimpleSchema2Bridge from 'uniforms-bridge-simple-schema-2'
import {RRuleEditor, Rule} from 'meteor/janmp:sdui'
import {Fill, BottomResizable} from 'react-spaces'
import {DateTime, Duration} from 'luxon'
import _ from 'lodash'

# schedule = new Schedule
#   rrules: [
#     frequency: 'MONTHLY'
#     byDayOfWeek: ['MO', ['TU', 3]]
#     start: new Date()
#     count: 15
#   ]

# console.log schedule.occurrences().toArray().map (d) -> (DateTime.fromJSDate d.date).toLocaleString(DateTime.DATETIME_FULL)

durationFromString = (str) ->
  return unless str?
  [fullStr, hStr, mStr, sStr] = str.match(/(\d{2}):(\d{2}):(\d{2})/)
  [hours, minutes, seconds] = [hStr, mStr, sStr].map (str) -> parseInt str, 10
  Duration.fromObject {hours, minutes, seconds}

export DateTimeMultiInputTest = ->

  [model, setModel] = useState {}

  rules =
    unless model.times?.length
      [model]
    else
      model.times.map (time) ->
        return unless (timeAsDuration = durationFromString time?.start)?
        return unless model?.start?
        duration = durationFromString(time.duration)?.as 'milliseconds'
        newStart =
          DateTime
          .fromJSDate model.start
          .plus timeAsDuration
          .toJSDate()
        {model..., start: newStart, duration, times: undefined}

  dates =
    _(rules)
    .map (rule) ->
      console.log rule
      try
        new Rule(rule)
        .occurrences().toArray()
        .map (o) ->
          DateTime
          .fromJSDate o.date
          .toLocaleString(DateTime.DATETIME_HUGE)
      catch error
        console.error error
        []
    .flatten()
    .map (d) -> <div key={d}>{d}</div>
    .value()
      
  <div className="m-1">
    <Fill>
      <Fill scrollable>
        <RRuleEditor model={model} onChangeModel={setModel}/>
      </Fill>
      <BottomResizable size="50%" scrollable>
        <pre>{JSON.stringify model, null, 2}</pre>
        {dates}
      </BottomResizable>
    </Fill>
  </div>