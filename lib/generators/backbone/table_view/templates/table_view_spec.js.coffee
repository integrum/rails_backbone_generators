describe '<%= plural_class_name %>TableView', ->
  beforeEach ->
    @sut = new <%= plural_class_name %>TableView
    @sut.render()

  it 'should be true', ->
    expect(true).toBeTruthy()
