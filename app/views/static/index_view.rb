# frozen_string_literal: true

class Static::IndexView < ApplicationView
  def template
    render PhlexUI::AlertDialog.new(open: true) do
      render PhlexUI::AlertDialog::Trigger.new do
        render PhlexUI::Button.new { "Show dialog" }
      end
      render PhlexUI::AlertDialog::Content.new do
        render PhlexUI::AlertDialog::Header.new do
          render PhlexUI::AlertDialog::Title.new { "Are you absolutely sure?" }
          render PhlexUI::AlertDialog::Description.new { "This action cannot be undone. This will permanently delete your account and remove your data from our servers." }
        end
        render PhlexUI::AlertDialog::Footer.new do
          render PhlexUI::AlertDialog::Cancel.new { "Cancel" }
          render PhlexUI::AlertDialog::Action.new { "Continue" } # Will probably be a link to a controller action (e.g. delete account)
        end
      end
    end
  end
end
