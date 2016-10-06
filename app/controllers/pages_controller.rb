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

		# Params
		@campaign = params[:c] || 'default'
		@promotion = params[:promo] || nil
		
		# Text
		@title = "The Humanize Blackhead Extractor | Humanize"
		@default = landing_page_text[ 'default' ]
		@header = landing_page_text[ @campaign ][ 'header' ] || @default[ 'header' ]
		@description = landing_page_text[ @campaign ][ 'description' ] || @default[ 'description' ]

		# Rails.logger.info( "promotion is #{@promotion}" )

		# Promotion
		if ( @promotion == "google" )
			@promo = @promotion
		end
		

	end

	def checkout
		@title = "Checkout | The Humanize Blackhead Extractor | Humanize"

		# Promotion
		@promotion = params[:promo] || nil

		if ( @promotion == "google" )
			@promo = @promotion
		end

	end

  def buy
  end

  def landing_page_text
  	{
			'lip' => {
				'header' => "Your blackhead's worst nightmare",
				'description' => "Remove blackheads around your lip line with our professional blackhead extractor. The same tool used by your facialist."
			},
			'nose' => {
				'header' => "Your blackhead's worst nightmare",
				'description' => "Remove blackheads on your nose with our professional blackhead extractor. The same tool used by your facialist."
			},
			'default' => {
				'header' => "Your blackhead's worst nightmare",
				'description' => "Rid your face of unsightful blackheads with our Blackhead Extractor. The same tool used by your facialist."
			}
		}
  end


end