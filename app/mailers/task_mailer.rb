class TaskMailer < ApplicationMailer
    default from: 'notifications@example.com'
   
    def task_start(task)
      @email = task.email
      mail(to: @email, subject: 'Your task has started')
    end
  end