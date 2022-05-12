import {Mongo} from 'meteor/mongo'
import {createFilesAPI} from 'meteor/janmp:sdui'

Files = new Mongo.Collection 'files'

export dataOptions = createFilesAPI
  sourceName: 'spaces'
  collection: Files
  getUserFileListRole: 'getUserFileList'
  uploadUserFilesRole: 'uploadUserFiles'
  getCommonFileListRole: 'getCommonFileList'
  uploadCommonFilesRole: 'uploadCommonFiles'