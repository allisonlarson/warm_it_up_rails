class SolutionSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :problem_id, :posse_id, :content, :points_earned

  has_many :votes

  private

    def attributes
      hash = super
      hash.merge!(:posse => object.posse.name)
      hash
    end
#  has_one :posse
#  has_one :problem
end
