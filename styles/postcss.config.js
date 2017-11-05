var tailwindcss = require('tailwindcss');

module.exports = {
  plugins: [
    tailwindcss('./styles/tailwind.config.js'),
    require('autoprefixer')
  ]
}
