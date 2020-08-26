class AnswersController < ApplicationController
    def index
        @answer = Answer.new
    end

    def create
        @answer = Answer.new(answer_params)
        if !@answer.save
            render 'index'
            return
        end
        redirect_to answers_summary_path
    end

    def summary
        @all_answer_1 = ""
        @all_answer_2 = ""
        @answers = Answer.page(params[:page]).order('created_at DESC')

        @answers.each do |answer|
            @all_answer_1 += answer.answer_1 + " "
            @all_answer_2 += answer.answer_2 + " "
        end
    end

    def destroy
        @answer = Answer.find(params[:id])
        @answer.destroy

        redirect_to answers_summary_path
    end

    private
    def answer_params
        params.require(:answer).permit(:answer_1, :answer_2, :age, :country_code)
    end
end
