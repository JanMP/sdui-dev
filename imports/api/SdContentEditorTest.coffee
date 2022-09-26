import {Meteor} from 'meteor/meteor'
import {Mongo} from 'meteor/mongo'
import SimpleSchema from 'simpl-schema'
import {createTableDataAPI} from 'meteor/janmp:sdui'
import pick from 'lodash/pick'

SimpleSchema.extendOptions ['sdContent', 'sdTable', 'uniforms']

export ContentTest = new Mongo.Collection 'content-test'

# seed test data
if Meteor.isServer
  if ContentTest.find().count() is 0
    [1..10].forEach (i) ->
      ContentTest.insert
        title: "Test Page No. #{i}"
        description: "A short description for Test Page No. #{i}"
        content: """
          # Test Page No. #{i}
          This is the first paragraph of the content for Test Page No. #{i}.
          
          And this is (as you might have guessed) the second paragraph of the content for Test Page No. #{i}.
        """

schemaDefinition =
  _id:
    type: String
    optional: true
    uniforms: -> null
  title:
    type: String
  description:
    type: String
  content:
    type: String
    uniforms: -> null
    sdContent:
      isContent: true


sourceSchema = new SimpleSchema schemaDefinition
listSchema = new SimpleSchema pick schemaDefinition, ['title', 'description']
formSchema = sourceSchema

export dataOptions = createTableDataAPI
  sourceName: 'testContent'
  sourceSchema: sourceSchema
  collection: ContentTest
  listSchema: listSchema
  formSchema: formSchema
  viewTableRole: 'any'
  canEdit: true
  editRole: 'any'
  canAdd: true
  canDelete: true
  canSearch: true
  canExport: true

