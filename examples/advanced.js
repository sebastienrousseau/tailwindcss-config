// SPDX-FileCopyrightText: 2026 Sebastien Rousseau <sebastian.rousseau@gmail.com>
// SPDX-License-Identifier: Apache-2.0 OR MIT

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
      colors: { brand: { 500: "#0066cc" } },
    },
  },
};
console.log("Extended brand color:", custom.theme.extend.colors.brand[500]);
