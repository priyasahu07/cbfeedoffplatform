class XmlWorker
  include Sidekiq::Worker

  def perform
    total = Book.count
    start_time = Time.now
    p start_time
    file = File.new("/home/priya/Desktop/maaaaaaa", "w+")
    xml = Builder::XmlMarkup.new(:indent => 2, :target => file)
    xml.instruct!
    current_count = 0
    xml.books do
      Book.each do |book|
        xml.book do
          xml.name book.name
          xml.author book.author
        end
        current_count+=1
           @remaining_count = total - current_count
        @percentage = (current_count.to_f/total.to_f)*100
      end
    end
    end_time = Time.now
    p end_time
    time_taken = end_time - start_time
    boo = Xmltrack.new(:totalrecords=>"#{total}",:datacompleted=> "#{current_count}",:dataremaining => "#{@remaining_count}",:percentagedata=> "#{@percentage.to_i}",:timetaken=>"#{time_taken}",:startingxmltime =>"#{start_time}")
    boo.save
    p time_taken
  end
end