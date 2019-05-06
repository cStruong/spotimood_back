class ThemesController < ApplicationController

    def create
        @theme = Theme.create(theme_params)
        if @theme.valid?
            render json: @theme, status: :created
        else
            render json: {error: 'Failed to create theme.'}, status: :not_acceptable
        end
    end

    def index
        @themes = Theme.all
        render json: @themes
    end

private
    def theme_params
        params.require(:theme).permit(:title, :mood, :genre)
    end
end