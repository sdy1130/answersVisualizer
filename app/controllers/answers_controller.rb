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
        redirect_to answers_summary_path # add notification that the answer has been submitted
    end

    def summary
        @answers = Answer.all
    end

    def destroy
        @answer = answer.find(params[:id])
        @answer.destroy

        redirect_to answers_summary_path
    end

    private
    def answer_params
        params.require(:answer).permit(:answer_1, :answer_2, :age, :country_code)
    end
end
