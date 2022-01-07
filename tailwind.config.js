// tailwind.config.js

const colors = require('tailwindcss/colors');

module.exports = {
  mode: 'jit',
  content: ['./imports/ui/**/*.{js,jsx,ts,tsx,coffee}', './public/*.html'],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        primary: colors.blue,
        secondary: colors.slate,
        danger: colors.red,
        ok: colors.green,
        warn: colors.orange,
      }
    },
  },
  variants: {},
  plugins: [],
}