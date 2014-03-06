A starting point for building static websites with [Grunt](http://24ways.org/2013/grunt-is-not-weird-and-hard/).

#### Features

Grunt will...
 - clean out folders and files left over in the build directory, then
 - copy over images,
 - compile jade pages using a layout template,
 - pull in jade includes,
 - compile stylus and coffeescript,
 - start a webserver and open the site in your browser, then
 - refresh your browser tab when you make any changes (requires [livereload](https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei) browser extension)


#### Usage

```
$ git clone https://github.com/sampl/grunt-boilerplate.git
$ cd grunt-boilerplate
$ npm install
$ grunt
```

If `npm install` fails, try `sudo npm install`
