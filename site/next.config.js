/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  swcMinify: true,
  rewrites: async () => {
    return [
      {
        source: "/game",
        destination: "/game.html",
      },
    ]
}
}

module.exports = nextConfig
