class MatchSerializer < ActiveModel::Serializer
  attributes :loca_team, :local_scores, :visit_team, :visit_scores, :winner, :looser, :draw?, :group, :stadium, :phase, :state, :date
end
