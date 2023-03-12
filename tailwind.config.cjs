/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.{js,ts,jsx,tsx}"],
  theme: {
    extend: {
      fontFamily: {
        banner: ['Fredericka the Great'],
        body: ["Quicksand", "sans-serif"],

      },
      colors: {
        'banner': '#FD9A90'
      }
    },
  },
  plugins: [],
};
