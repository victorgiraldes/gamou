module RegistrationsHelper
  def get_user_pan(plan)
    case plan
    when 'monthly'
      return I18n.t('web.user.plan.monthly.title')
    when 'semester'
      return I18n.t('web.user.plan.semester.title')
    when 'yearly'
      return I18n.t('web.user.plan.yearly.title')
    else
      return I18n.t('web.user.plan.trial.title')
    end
  end
end
