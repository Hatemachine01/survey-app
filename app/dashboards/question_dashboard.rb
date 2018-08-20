require "administrate/base_dashboard"

class QuestionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    category: Field::BelongsTo,
    answers: Field::HasMany,
    id: Field::Number,
    question_body: Field::Text,
    yes_value: Field::Number,
    no_value: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :category,
    :answers,
    :id,
    :question_body,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :category,
    :answers,
    :id,
    :question_body,
    :yes_value,
    :no_value,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :category,
    :answers,
    :question_body,
    :yes_value,
    :no_value,
  ].freeze

  # Overwrite this method to customize how questions are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(question)
  #   "Question ##{question.id}"
  # end
end
