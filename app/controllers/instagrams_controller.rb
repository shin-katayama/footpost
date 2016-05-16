class InstagramsController < ApplicationController

    def index
        @medias = Instagram.tag_recent_media("スニーカー")
    end
end
