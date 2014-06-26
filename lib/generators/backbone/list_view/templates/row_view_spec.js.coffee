describe '<%= singular_class_name %>RowView', ->
  beforeEach ->
    @sut = new <%= singular_class_name %>RowView model: new Backbone.Model
    @sut.render()
    
  it 'should be true', ->
    expect(true).toBeTruthy()
