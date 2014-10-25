# name: OML Linker
# about: Takes any Outwitters "outwitters://" link and transforms it into an oembeddable link
# version: 0.1
# authors: Alex Okafor

# uses server side to ensure markdown pipeline on the server knows about it
register_asset "javascripts/oml_linker.js", :server_side

# Without this, all the Onebox stuff isn't loaded,
# so methods like `matches_regexp` do not work.
# It's weird. I know.
#Onebox = Onebox

#patching genericOnebox to allow embedded html without iframes from whitelisted sites.
class Onebox::Engine::OutwittersReplayOnebox
    include Onebox::Engine
    include WhitelistedGenericOnebox

    matches_regexp(/^https:\/\/outwittersgame.appspot.com\/services\/embedreplay\?gameid=([A-Za-z0-9\-\_]+)$/)

    def generic_html
        return data[:html] if data[:html]
        layout.to_html
    end
end
