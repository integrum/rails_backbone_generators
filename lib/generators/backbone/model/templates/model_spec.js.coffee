describe '<%= singular_class_name %>', ->
  beforeEach ->
    @sut = new <%= singular_class_name %>

  it 'should be true', ->
    expect(true).toBeTruthy()
