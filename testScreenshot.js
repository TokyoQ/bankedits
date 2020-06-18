const fs                   = require('fs')
const Twit                 = require('twit')
const async                = require('async')
const phantom              = require('phantom')
const minimist             = require('minimist')
const Mastodon             = require('mastodon')
const Mustache             = require('mustache')
const {WikiChanges}        = require('wikichanges')
const {Address4, Address6} = require('ip-address')

function takeScreenshot(url) {
    return new Promise(function(resolve, reject) {
      phantom.create(['--ignore-ssl-errors=yes']).then(function(browser) {
        var filename = new Date().toString() + '.png'
        browser.createPage().then(function(page) {
          page.property('viewportSize', {width: 1024, height: 768}).then(function() {
            page.open(url).then(function(status) {
              if (status === 'fail') {
                cb('fail', null)
              } else {
                page.evaluate(function() {
                  try {
                    var diffBoundingRect = document.querySelector('table.diff.diff-contentalign-left').getBoundingClientRect()
                    // for some reason phantomjs doesn't seem to get the sizing right
                    return {
                      top: diffBoundingRect.top,
                      left: diffBoundingRect.left,
                      width: diffBoundingRect.width + 75,
                      height: diffBoundingRect.height,
                    }
                  } catch(e) {
                    console.log('Error: no diff found on wikipedia page')
                  }
                }).then(function(clipRect) {
                  page.property('clipRect', clipRect).then(function() {
                    page.render(filename).then(function() {
                      browser.exit().then(function() {
                       resolve(filename)
                      })
                    })
                  })
                })
              }
            })
          })
        })
      })
    })
  }

  //const url = 'https://en.wikipedia.org/w/index.php?diff=619968907&oldid=619663144'
  const url = 'https://en.wikipedia.org/w/index.php?diff=961045075&oldid=961043852'
  takeScreenshot(url)
  