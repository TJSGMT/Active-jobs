class TestJob
  
  def perform
    # self.class.set(:wait => 2.minutes).perform_later(GenerateRandomUserWorker.perform_async)
    GenerateRandomUserWorker.perform_async
  end
   handle_asynchronously :perform
  
  end