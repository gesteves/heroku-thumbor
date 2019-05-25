An unofficial Heroku-ready Thumbor install with WebP support and OpenCV support

# Installation

Just press this button:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy) 

Or, follow these steps:

1. Clone repo
2. `heroku create`
3. `heroku buildpacks:set heroku/python`
4. `heroku buildpacks:add --index 1 heroku-community/apt`
5. `heroku buildpacks:add https://github.com/q-m/heroku-buildpack-imagemagick --index 2 --app HEROKU_APP_NAME`
5. `git push heroku master` (the first deploy will take about 10 minutes)
6. Done!

# Notes

[Thumbor's smart cropping](https://github.com/thumbor/thumbor/wiki/Detection-algorithms) is supported at this time.
