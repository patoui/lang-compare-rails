class ComparisonSearchController < ApplicationController
    def index
        comparison = Comparison.where('method LIKE ?', "%#{params[:q]}%").first

        render json: {
            comparison: comparison,
            matches: if comparison then comparison.getMatches() else [] end
        }
    end
end
