# Homebrew formula for @sebastienrousseau/tailwindcss-config.
#
# A library rather than a CLI, so this is only useful to someone who wants the
# preset available outside a project's node_modules. `npm install` remains the
# supported path.
class TailwindcssConfig < Formula
  desc "Shareable Tailwind CSS configuration providing standardized theme design tokens, color palettes, and typography"
  homepage "https://github.com/sebastienrousseau/tailwindcss-config"
  url "https://registry.npmjs.org/@sebastienrousseau/tailwindcss-config/-/tailwindcss-config-0.0.7.tgz"
  license any_of: ["Apache-2.0", "MIT"]

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
  end

  test do
    output = shell_output("#{Formula["node"].opt_bin}/node -e " \
      "'console.log(typeof require(\"#{libexec}/lib/node_modules/@sebastienrousseau/tailwindcss-config\"))'")
    assert_equal "object", output.strip
  end
end
