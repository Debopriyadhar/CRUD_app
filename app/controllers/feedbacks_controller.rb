class FeedbacksController < ApplicationController
    def create
        @student = Student.find(params[:student_id])
        @feedback = @student.feedbacks.create(comment_params)
        redirect_to student_path(@student)
    end

    def destroy
        @student = Student.find(params[:student_id])
        @feedback = @student.feedbacks.find(params[:id])
        @feedback.destroy
        redirect_to student_path(@student), status: :see_other
      end
    
    private
        def comment_params
            params.require(:feedback).permit(:commenter, :body)
        end    
end
