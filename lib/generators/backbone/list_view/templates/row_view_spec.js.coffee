describe '<%= singular_class_name %>RowView', ->
  beforeEach ->
    @sut = new <%= singular_class_name %>RowView
    @sut.render()
    
  it 'should be true', ->
    expect(true).toBeTruthy()
