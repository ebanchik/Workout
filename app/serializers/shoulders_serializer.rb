class ShoulderSerializer < ActiveModel::Serializer
  attributes :name, :sets, :reps, :break_t, :style, :day
end