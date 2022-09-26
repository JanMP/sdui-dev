// tailwind.config.js

const colors = require('tailwindcss/colors');

module.exports = {
  content: [
    './imports/ui/**/*.{js,jsx,ts,tsx,coffee}',
    './public/*.html',
    // '../meteor-packages/sdui/**/*.{js,jsx,ts,tsx,coffee}'
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        primary: colors.blue,
        secondary: colors.slate,
        danger: colors.red,
        ok: colors.green,
        warning: colors.orange
      }
    },
  },
  variants: {},
  plugins: [
    require('@tailwindcss/typography'),
    // require('@tailwindcss/forms'),
  ],
}