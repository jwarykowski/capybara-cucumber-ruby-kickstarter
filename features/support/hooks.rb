Before do
  Capybara.use_default_driver
end

Before '@javascript' do
  Capybara.current_driver = Capybara.javascript_driver
end

Before do |scenario|
  scenario.source_tag_names.each do |tag|
    driver_name = tag.sub(/^@/, '').to_sym
    if Capybara.drivers.has_key?(driver_name)
      Capybara.current_driver = driver_name
    end
  end
end

Before do |scenario|
end

After do |scenario|
end

at_exit do
end
