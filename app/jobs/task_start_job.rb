class TaskStartJob < ApplicationJob
  queue_as :default

  def perform()
    # Do something later
    puts 'Execute job'
    task = Task.where('start_date < ? AND end_date > ?', Time.now, Time.now).first
    if task.present?
      if task.email.present?
        TaskMailer.task_start(task).deliver_later
        puts 'Email sended'
      end
    end
  end
end
