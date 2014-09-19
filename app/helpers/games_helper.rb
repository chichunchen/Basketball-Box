module GamesHelper
	def category_options
        Category.all.map{ |c| [c.name, c.id] }
    end

    def category_and_date game
    	"#{Category.find(game.category_id).name}@#{game.created_at.strftime("%B %d, %Y")}"
    end
end
