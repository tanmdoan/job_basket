every 3.minutes do
  runner "Job.clear_jobs"
end

every 4.minutes do
  runner "Job.build_all_jobs"
end
