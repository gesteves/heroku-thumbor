# Biscayne

A Heroku-ready Thumbor install with WebP support.

## Installation

1. Clone repo
2. `heroku create`
3. `heroku config:set BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi`
4. `heroku config:set THUMBOR_SECURITY_KEY=123456` (you should probably choose a better key)
5. `git push heroku master` (the first deploy will take about 10 minutes)
6. Done!

## Notes

[OpenCV isn't included](https://github.com/gesteves/biscayne/issues/1) in this installation because of Heroku's compiled slug size limits, so [Thumbor's smart cropping](https://github.com/thumbor/thumbor/wiki/Detection-algorithms) isn't supported at this time.
