// tailwind.config.js

const colors = require('tailwindcss/colors');

module.exports = {
  purge: ['./imports/ui/**/*.{js,jsx,ts,tsx}', './public/*.html'],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        primary: colors.teal,
        secondary: colors.warmGray,
        danger: colors.red,
        ok: colors.green,
        warn: colors.orange,
      }
    },
  },
  variants: {},
  plugins: [],
}