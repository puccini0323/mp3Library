
Factory.define :rating do |r|
  r.user 'John Smith'
  r.value 5
  r.association :mp3, :factory => :mp3
end