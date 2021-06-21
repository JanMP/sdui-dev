const colors = require('tailwindcss/colors');

module.exports = {
  // mode: 'jit',
  purge: [
    './imports/ui/**/*.{js, jsx, ts, tsx, vue}',
    './client/**/*.html',
  ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        blueGray: colors.blueGray,
      },  
    },
  },
  variants: {
    extend: {},
  },
  plugins: [
    // require('@tailwindcss/aspect-ratio'),
    // require('@tailwindcss/forms'),
    // require('@tailwindcss/typography')
  ],
};