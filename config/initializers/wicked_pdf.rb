# WickedPDF Global Configuration
#
# Use this to set up shared configuration options for your entire application.
# Any of the configuration options shown here can also be applied to single
# models by passing arguments to the `render :pdf` call.
#
# To learn more, check out the README:
#
# https://github.com/mileszs/wicked_pdf/blob/master/README.md

if Rails.env.staging? || Rails.env.production?  || Rails.env.preproduction?
  exe_path = Rails.root.join('bin', 'wkhtmltopdf_linux_amd64').to_s
else
#  exe_path = COMMUNITYFOREM::CONFIG::WKHTMTTOPDF_PATH "#{ENV['GEM_HOME']}/gems/wkhtmltopdf-binary-#{Gem.loaded_specs['wkhtmltopdf-binary'].version}/bin/wkhtmltopdf_linux_x86"
  exe_path = "#{ENV['GEM_HOME']}/gems/wkhtmltopdf-binary-#{Gem.loaded_specs['wkhtmltopdf-binary'].version}/bin/wkhtmltopdf_linux_amd64"
end

WickedPdf.config = {
  # Path to the wkhtmltopdf executable: This usually isn't needed if using
  # one of the wkhtmltopdf-binary family of gems.
  # exe_path: '/usr/local/bin/wkhtmltopdf',
  #   or
  # exe_path: Gem.bin_path('wkhtmltopdf-binary', 'wkhtmltopdf')
  wkhtmltopdf: exe_path,
  exe_path: exe_path,

  # Layout file to be used for all PDFs
  # (but can be overridden in `render :pdf` calls)
}
