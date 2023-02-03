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
      "Do you really want to do this?": "Do you really want to do this?"
      "Success, Check both client and server logs": "Success, Check both client and server logs"
      "The entry has been deleted": "The entry has been deleted"
      "Export data received from Server.": "Export data received from Server."
      "Unexpected Error (see console.log)": "Unexpected Error (see console.log)"
      "You do not have the required user accees permission to view this content.": "You do not have the required user accees permission to view this content."
  de:
    translation:
      "Cancel": "Abbrechen"
      "OK": "OK"
      "Reset": "Zurücksetzen"
      "Save": "Speichern"
      "Do you really want to do this?": "Wollen Sie das wirklich?"
      "Success, Check both client and server logs": "Erfolgreich ausgeführt, Test Ausgabe im Browser- und Servler-Logs"
      "Select": "Auswahl"
      "Multiple selections with react-functional-select": "Mehrfach-Auswahl mit react-select"
      "Bool": "Boolsche Variable"
      "Hobbies": "Freizeitbeschäftigungen"
      "Date": "Datum"
      "The entry has been deleted": "Der Eintrag wurde gelöscht"
      "Export data received from Server.": "Exportdaten vom Server erhalten"
      "Unexpected Error (see console.log)": "Unerwarteter Fehler (siehe console.log)"
      "You do not have the required user accees permission to view this content.": "Sie haben nicht dier erforderlichen Zugriffsrechte für diesen Inhalt."

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
