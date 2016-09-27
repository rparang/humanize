class PagesController < ApplicationController

	def index
		@title = "Premium Facial and Skincare Tools | Humanize"
	end

	def landing
		@title = "The Humanize Blackhead Extractor | Humanize"
	end

	def about
	end

	def product

		@campaign = params[:c] || 'default'
		@title = "The Humanize Blackhead Extractor | Humanize"
		@copy = {
			'lip' => {
				'header' => "Your blackhead's worst nightmare",
				'description' => "Rid blackheads around your lip line with our professional blackhead extractor. The same tool used by your facialist."
			},
			'nose' => {
				'header' => "Your blackhead's worst nightmare",
				'description' => "Rid blackheads around on your nose with our professional blackhead extractor. The same tool used by your facialist."
			},
			'default' => {
				'header' => "Your blackhead's worst nightmare",
				'description' => "Rid your face of unsightful blackheads with our Blackhead Extractor. The same tool used by your facialist."
			}
		}

		@default = @copy[ 'default' ]
		@header = @copy[ @campaign ][ 'header' ] || @default[ 'header' ]
		@description = @copy[ @campaign ][ 'description' ] || @default[ 'description' ]

		# Rails.logger.info( @header )
		
	end

	def checkout
		@title = "Checkout | The Humanize Blackhead Extractor | Humanize"
	end

  def buy
  end

end