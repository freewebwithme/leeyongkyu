const defaultTheme = require("tailwindcss/defaultTheme");

module.exports = {
  purge: [
    "../lib/**/*.ex",
    "../lib/**/*.leex",
    "../lib/**/*.eex",
    "./js/**/*.js",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ["Nanum Myeongjo", ...defaultTheme.fontFamily.sans],
      },
    },
  },
  variants: {},
  plugins: [require("@tailwindcss/forms")],
};
