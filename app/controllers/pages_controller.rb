class PagesController < ApplicationController
  attr_accessor :holding_page_path, :holding_page_text
  def homepage
    @holding_page_path = "https://www.gov.uk/looking-after-children-divorce"
    @holding_page_text = "Find out more about making child arrangements"
  end

  def involving_children
    @holding_page_path = "https://www.gov.uk/looking-after-children-divorce"
    @holding_page_text = "Find out more about making child arrangements"
  end

  def parental_responsibility
    @holding_page_path = "https://www.gov.uk/parental-rights-responsibilities"
    @holding_page_text = "Find out about more about parental rights and responsibilities"
  end

  def emotional_support
    @holding_page_path = "https://www.gov.uk/looking-after-children-divorce"
    @holding_page_text = "Find out about more about making child arrangements"
  end

  def negotiating_between_parents
    @holding_page_path = "https://www.gov.uk/looking-after-children-divorce/if-you-agree"
    @holding_page_text = "Get information on making a parenting plan"
  end

  def professional_mediation
    @holding_page_path = "https://www.gov.uk/looking-after-children-divorce/mediation"
    @holding_page_text = "Find out how to use mediation to make an agreement without going to court"
  end

  def professional_mediation_other_parent
    @holding_page_path = "https://www.gov.uk/looking-after-children-divorce/mediation"
    @holding_page_text = "Find out how to use mediation to make an agreement without going to court"
  end

  def lawyer_negotiation
    @holding_page_path = "https://www.gov.uk/looking-after-children-divorce"
    @holding_page_text = "Find out about more about making child arrangements"
  end

  def collaborative_law
    @holding_page_path = "https://www.gov.uk/looking-after-children-divorce"
    @holding_page_text = "Find out about more about making child arrangements"
  end

  def single_lawyer
    @holding_page_path = "https://www.gov.uk/looking-after-children-divorce"
    @holding_page_text = "Find out about more about making child arrangements"
  end

  def arbitration
    @holding_page_path = "https://www.gov.uk/looking-after-children-divorce"
    @holding_page_text = "Find out about more about making child arrangements"
  end

  def going_to_court
    @holding_page_path = "https://www.gov.uk/looking-after-children-divorce/apply-for-court-order"
    @holding_page_text = "Find out how to apply for court order"
  end

  def going_to_court_other_parent
    @holding_page_path = "https://www.gov.uk/looking-after-children-divorce/apply-for-court-order"
    @holding_page_text = "Find out how to apply for court order"
  end


end
