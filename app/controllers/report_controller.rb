class ReportController < ApplicationController
  def xml_dpi
    @xmltrack = Xmltrack.last
  end

  def rerun
    XmlWorker.perform_async
  end
end
