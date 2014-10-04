module Web::ContestsHelper
  def contests_of_subject(all_contests, subject)
    all_contests.select { |contest| contest.subject == subject }
  end
end
