import {Meteor} from 'meteor/meteor'
import {Mongo} from 'meteor/mongo'
import SimpleSchema from 'simpl-schema'
import {createTableDataAPI, currentUserIsInRole} from 'meteor/janmp:sdui'

import _ from 'lodash'

SimpleSchema.extendOptions ['sdTable', 'uniforms']

export Test = new Mongo.Collection 'test'

if Meteor.isServer
  if Test.find().count() is 0
    [1..10000].forEach (n) ->
      Test.insert
        a: _.random 1, 100
        b: _.random 1, 1000
        name: "Test #{n}"
        alignment: _.sample ['chaotic', 'neutral', 'lawful']
        bool: _.sample [true, false]

schemaDefinition =
  _id:
    type: String
    optional: true
    uniforms: -> null
  name: String
  a:
    type: Number
    # min: 1
    # sdTable:
    #   editable: true
  b:
    type: Number
    # sdTable:
    #   editable: true
  sum:
    type: Number
    label: 'a + b'
  alignment:
    type: String
    allowedValues: ['chaotic', 'neutral', 'lawful']
    sdTable:
      editable: true
      overflow: true
  bool:
    type: Boolean
    sdTable:
      editable: true
  # _disableEditForRow: Boolean
  # _disableDeleteForRow: Boolean

sourceSchema = new SimpleSchema _.omit schemaDefinition, ['sum']
listSchema = new SimpleSchema schemaDefinition

getPreSelectPipeline = -> [
    $match:
      a: $lt: 9
      b: $lt: 100
  ]

getProcessorPipeline = -> [
  $addFields:
    sum: $add: ['$a', '$b']
    _disableEditForRow:
      unless currentUserIsInRole 'canEditRowsWithALessThan20'
        $lt: ['$a', 20]
    _disableDeleteForRow: $eq: ['$alignment', 'lawful']
  ]

export props = createTableDataAPI
  sourceName: 'testList'
  sourceSchema: sourceSchema
  collection: Test
  listSchema: listSchema
  formSchema: sourceSchema
  viewTableRole: 'any'
  # getPreSelectPipeline: getPreSelectPipeline
  getProcessorPipeline: getProcessorPipeline
  canEdit: true
  editRole: 'any'
  canAdd: true
  canDelete: true
  canSearch: true
  canExport: true
  checkDisableDeleteForRow: true
  checkDisableEditForRow: true
  setupNewItem: -> name: 'new Item'
  initialSortColumn: 'sum'
  initialSortDirection: 'ASC'
  showRowCount: true
 

