class Match < ActiveRecord::Base
  has_one :local_team
  has_one :visit_team
  has_one :winner
  has_one :looser
  has_many :group
  has_one :stadium
  validates :date, presence: true
  validates :phase, presence: true, format: {with: /\A(Grupos|Octavos de final|Cuartos de final|Semifinales|Final)\z/i}
  validates :state, presence: true, format: {with: /\A(Por jugar|En juego|Finalizado)\z/i}
  validates :local_team, presence: true
  validates :visit_team, presence: true
  validates :local_scores, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :visit_scores, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validates :stadium, presence: true
  validate :equals_team
  validate :loser_match
  validate :winner_match
  validate :draw_match
  
  	def equals_team
  		if local_team == visit_team
  			errors.add(:visit_team, 'error: Equipo visitante deberia ser diferente a equipo local')
 		 end
 	end
  	def loser_match
   		 if local_scores != visit_scores && !looser
     		 errors.add(:loser, 'error: Deberia de existir un perdedor')
    	end
  	end

  	def winner_match
   		if local_scores != visit_scores && !winner
     		 errors.add(:winner, 'error: Deberia de existir un ganador')
    	end
 	 end

	def draw_match
    	if local_scores == visit_scores && !draw?
      		errors.add(:draw?, 'error: Deberia de ser un empate')
   		end
  	end
end
