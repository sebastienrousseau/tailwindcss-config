/**
 * Advanced custom Tailwind theme extension
 */
const base = require("../index.cjs");
const custom = {
  ...base,
  theme: {
    ...base.theme,
    extend: {
      ...base.theme.extend,
      colors: { brand: { 500: "#0066cc" } }
    }
  }
};
console.log("Extended brand color:", custom.theme.extend.colors.brand[500]);
