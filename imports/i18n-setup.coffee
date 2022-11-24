import i18n from 'i18next'
import {initReactI18next} from 'react-i18next'
import LanguageDetector from 'i18next-browser-languagedetector'

resources =
  en:
    translation:
      "Cancel": "Cancel"
      "OK": "OK"
      "Reset": "Reset"
      "Save": "Save"
      "test": "Test i18n English"
      "Do you really want to do this?": "Do you really want to do this?"
      "Success, Check both client and server logs": "Success, Check both client and server logs"
  de:
    translation:
      "Cancel": "Abbrechen"
      "OK": "OK"
      "Reset": "Zurücksetzen"
      "Save": "Speichern"
      "test": "Test i18n Deutsch"
      "Do you really want to do this?": "Wollen Sie das wirklich?"
      "Success, Check both client and server logs": "Erfolgreich ausgeführt, Test Ausgabe im Browser- und Servler-Logs"
      "Select": "Auswahl"
      "Multiple selections with react-functional-select": "Mehrfach-Auswahl mit react-select"
      "Bool": "Boolsche Variable"
      "Hobbies": "Freizeitbeschäftigungen"
      "Date": "Datum"

export default ->
  i18n
    # .use LanguageDetector
    .use initReactI18next
    .init {
      lng: 'de'
      fallbackLng: 'en'
      resources,
      interpolation: escapeValue: false
    }