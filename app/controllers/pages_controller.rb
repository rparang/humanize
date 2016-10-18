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

		Rails.logger.info( "c is #{@campaign}" )

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
  	@title = "Buy Now | The Humanize Blackhead Extractor | Humanize"
  end


  def landing_page_text
  	{

  		# Treatment for blackheads
			'treatment for blackheads' => {
				'header' => "Your treatment for blackheads",
				'description' => "Treat your blackheads with our professional blackhead extractor. The same tool used by your facialist."
			},

			# How remove blackheads
			'how remove blackheads' => {
				'header' => "How you can remove blackheads",
				'description' => "Remove your blackheads with our professional blackhead extractor. The same tool used by your facialist."
			},

			# Home remedies for blackheads
			'home remedies for blackheads' => {
				'header' => "Your home remedy for blackheads",
				'description' => "Remove your blackheads in the comfort of your home with our professional blackhead extractor. The same tool used by your facialist."
			},

			# Blackhead remedy
			'blackhead remedy' => {
				'header' => "Your blackhead remedy",
				'description' => "Remove your blackheads in the comfort of your home with our professional blackhead extractor. The same tool used by your facialist."
			},

			# Blackhead remedy
			'how get rid of blackheads' => {
				'header' => "How to get rid of blackheads",
				'description' => "Remove your blackheads with our professional blackhead extractor. The same tool used by your facialist."
			},

			# Nose
			'nose' => {
				'header' => "Your blackhead's worst nightmare",
				'description' => "Remove blackheads on your nose with our professional blackhead extractor. The same tool used by your facialist."
			},


			# Default
			'default' => {
				'header' => "Your blackhead's worst nightmare",
				'description' => "Rid your face of unsightful blackheads with our Blackhead Extractor. The same tool used by your facialist."
			}

		}
  end

  def letsencrypt
  	render text: "kKywmgzP12kpgqDwewKpeVtJ6c7M7NSN2E-63-ECALE.LBJNq17UHmp11naLo6UihRkLvixGsoykQdfCeINsHbo"
  end


end