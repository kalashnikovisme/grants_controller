module Web::OrganizationsHelper
  def org_type_class(organization)
    if organization.org_type.grant_operator?
      :sort
    else
      :ruble
    end
  end
end
