content_request_attributes = [
        'Цель проекта',
        'Задачи проекта',
        'Аннотация',
        'Проблематика и актуальность',
        'Целевая аудитория',
        'Методы реализации проекта',
        'Результаты проекта',
        'Мультипликативность проекта',
        'Календарный план',
        'Смета расходов'
]

content_request_attributes.each do |attr|
  Hint.find_or_create_by_subject attr
end

helps = [
                    'Что такое грант?',
                    'Виды грантов',
                    'Законодательство РФ в сфере получения грантов'
]

helps.each do |attr|
  Help.find_or_create_by_title attr
end
