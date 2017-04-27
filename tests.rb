Test.it('should support finding peaks') do
  Test.assert_equals(pick_peaks([1,2,3,6,4,1,2,3,2,1]), {"pos"=>[3,7], "peaks"=>[6,3]})
end
Test.it('should support finding peaks, but should ignore peaks on the edge of the array') do
  Test.assert_equals(pick_peaks([3,2,3,6,4,1,2,3,2,1,2,3]), {"pos"=>[3,7], "peaks"=>[6,3]})
end
Test.it('should support finding peaks; if the peak is a plateau, it should only return the position of the first element of the plateau') do
  Test.assert_equals(pick_peaks([3,2,3,6,4,1,2,3,2,1,2,2,2,1]), {"pos"=>[3,7,10], "peaks"=>[6,3,2]})
end
Test.it('should support finding peaks; if the peak is a plateau, it should only return the position of the first element of the plateau') do
  Test.assert_equals(pick_peaks([2,1,3,1,2,2,2,2,1]), {"pos"=>[2,4], "peaks"=>[3,2]})
end
Test.it('should support finding peaks, but should ignore peaks on the edge of the array') do
  Test.assert_equals(pick_peaks([2,1,3,1,2,2,2,2]), {"pos"=>[2], "peaks"=>[3]})
end
