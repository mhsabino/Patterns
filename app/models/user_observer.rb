class UserObserver < Everett::Observer

  def after_save(user)
    puts 'hehehehe'
    Rails.logger.info('New user has been saved!')
    UserMailer.delay.welcome_email(user)
  end
end