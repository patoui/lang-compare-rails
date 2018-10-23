class ComparisonSuggestionController < ApplicationController
    def index
        render json: Comparison
            .where('method LIKE ?', "%#{params[:q]}%")
            .pluck(:method)
    end
end
