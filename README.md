# Biscayne

A Heroku-ready Thumbor install

## Installation

1. Clone repo
2. `heroku create`
3. `heroku addons:add rediscloud:25`
4. `heroku config:set BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi`
5. `heroku config:set THUMBOR_SECURITY_KEY=123456` (you should probably choose a better key)
6. `git push heroku master` (the first deploy will take about 10 minutes)
7. Done!
