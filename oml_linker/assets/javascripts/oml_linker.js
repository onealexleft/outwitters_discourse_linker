Discourse.Dialect.inlineRegexp({
        matcher: /^outwitters:\/\/viewgame\?id=([A-Za-z0-9\-\_]+)/gm,
        spaceBoundary: false,
        wordBoundary: false,
        start: 'outwitters',

        emitter: function(matches) {
          var gameID = matches[1];
          var embedLink = "https://outwittersgame.appspot.com/services/embedreplay?gameid="+gameID;
          return ['a', {href: embedLink}, embedLink];
        }
      });