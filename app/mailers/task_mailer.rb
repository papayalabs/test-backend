class TaskMailer < ApplicationMailer
    default from: 'notifications@example.com'
   
    def task_start(email)
      @email = email
      mail(to: @email, subject: 'Your task has started')
    end
  end