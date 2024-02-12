class AgesController < ApplicationController
  def oldest
    @director = Director.where.not(dob: nil).order(dob: :asc).first
    calculate_birthday
    @age = "Oldest"
    render "director_templates/determine_age"
  end

  def youngest
    @director = Director.where.not(dob: nil).order(dob: :desc).first
    calculate_birthday
    @age = "Youngest"
    render "director_templates/determine_age"
  end

  private

  def calculate_birthday
    @birthday = @director&.dob&.strftime('%B %d, %Y')
  end

  def calculate_age(birthdate)
    (Date.today - birthdate).to_i / 365
  end
end
