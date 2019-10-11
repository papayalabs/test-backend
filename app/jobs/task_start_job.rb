class TaskStartJob < ApplicationJob
  queue_as :urgent

  def perform(*args)
    # Do something later
    task = Task.where('start_date > ? AND end_date < ?', Time.now, Time.now)
    if task.email.present?
      TaskMailer.task_start.deliver_later
    end
  end
end
