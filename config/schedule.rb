every 6.weeks, at: "11:58 pm" do
  runner "Job.clear_jobs"
end

every 6.weeks, at: "11:59 pm" do
  runner "Job.build_all_jobs"
end
