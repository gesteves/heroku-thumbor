An unofficial Heroku-ready Thumbor install with WebP support.

# Installation

Just press this button:

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy) 

Or, follow these steps:

1. Clone repo
2. `heroku create`
3. `heroku config:set BUILDPACK_URL=https://github.com/ddollar/heroku-buildpack-multi`
4. `heroku config:set THUMBOR_SECURITY_KEY=123456` (you should probably choose a better key)
5. `git push heroku master` (the first deploy will take about 10 minutes)
6. Done!

# Run in localhost (Docker compose)

Run:

```bash
$ cp .env.dist .env
```

Edit your `.env` file changing environment variables.
Now run:

```bash
$ docker-compose build
$ docker-compose up
```

Now you can open in your localhost: `http://localhost:8000/unsafe/300x200/http://lorempixel.com/500/500`.

# Support to s3

If you want to use with s3 images, you must set the environment variables bellow:

```
AWS_ACCESS_KEY=
AWS_SECRET_KEY=
AWS_BUCKET=
AWS_REGION=us-east-1
```

Now, the url has the format:

`http://localhost:8000/unsafe/300x200/<bucket-name>/<path in s3>`

Example:

`https://my-thumbor-app.herokuapp.com/myKey=/my-bucket-name/path/to/image.jpg`

Thumbor app: my-thumbor-app
Generated key: myKey=
Bucket name: my-bucket-name
Key in s3: /path/to/image.jpg

# Notes

[OpenCV isn't included](https://github.com/gesteves/biscayne/issues/1) in this installation because of Heroku's compiled slug size limits, so [Thumbor's smart cropping](https://github.com/thumbor/thumbor/wiki/Detection-algorithms) isn't supported at this time.
