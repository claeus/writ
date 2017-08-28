Analytics = Segment::Analytics.new({
  write_key: 'HHD02baxcX1u03FMkmQ4vzVihAtcdDvn',
  on_error: Proc.new { |status, msg| print msg }
})