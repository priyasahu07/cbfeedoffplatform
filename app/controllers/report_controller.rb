class ReportController < ApplicationController
  def xml_dpi
    @xmltrack = Xmltrack.last
  end

  def rerun
    XmlWorker.perform_async
    redirect_to '/report/xml_dpi'
  end
end
