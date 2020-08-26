class Answer < ApplicationRecord
    validates :answer_1, presence: true
    validates :answer_2, presence: true
    validates :age, presence: true
    validates :country_code, presence: true

    def country_name
        country = ISO3166::Country[country_code]
        country.translations[I18n.locale.to_s] || country.name
    end
end
