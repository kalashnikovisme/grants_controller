module Web::ContestsHelper
  def contests_of_subject(all_contests, subject)
    all_contests.select { |contest| contest.subject == subject }
  end

  def contests_of_subject_count(all_contests, subject)
    contests_of_subject(all_contests, subject).count
  end

  def there_is_not_contests?(contests)
    contests.empty?
  end

  def local_name_of_enumerize(subject)
    t("enumerize.contest.subject.#{subject}")
  end
end
