module InvestmentsHelper

  def investment_image_file_name(investment)
    investment.image.url.split('/').last.split("?")[0] if investment.image.present?
  end

  def investment_image_advice_note_key(investment)
    investment.image.exists? ? "edit_note" : "add_note"
  end

  def investment_image_button_text(investment)
    investment.image.exists? ? "edit_image" : "add_image"
  end

end