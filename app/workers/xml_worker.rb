class XmlWorker
  include Sidekiq::Worker

  def perform
    total = Book.count
    file = File.new("/home/priya/Desktop/maaaaaaa", "w+")
    xml = Builder::XmlMarkup.new(:indent => 2, :target => file)
    xml.instruct!
    xml.books do
      current_count = 1
      Book.each do |book|
        #   @percentage = (current_count.to_f/total.to_f)*100
        #   boo = Xmltrack.new(:datadone=> "#{current_count}",:dataremaining => "#{total}",:percentagedata=> "#{@percentage.to_i}")
        #   boo.save
        xml.book do
          xml.name book.name
          xml.author book.author
        end
        current_count+=1
      end
    end
  end
end