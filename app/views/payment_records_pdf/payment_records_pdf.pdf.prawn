prawn_document do |pdf|
  pdf.text 'payment Records'
  pdf.move_down 20
  pdf.table @records.collect{ |r| [r.item_name, r.price]}
end