class PagesController < ApplicationController
    def home
        if current_user
            @groups = current_user.groups
        else
            @groups = []
        end
    end
end