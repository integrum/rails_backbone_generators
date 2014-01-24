describe '<%= class_name %>View', ->
  beforeEach ->
    @sut = new <%= class_name %>View
    @sut.render()

  it 'should be true', ->
    expect(true).toBeTruthy()
