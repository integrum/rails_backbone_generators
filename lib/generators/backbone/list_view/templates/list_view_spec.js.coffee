describe '<%= plural_class_name %>ListView', ->
  beforeEach ->
    @sut = new <%= plural_class_name %>ListView collection: new Backbone.Collection
    @sut.render()

  it 'should be true', ->
    expect(true).toBeTruthy()
