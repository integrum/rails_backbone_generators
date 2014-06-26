describe '<%= plural_class_name %>TableView', ->
  beforeEach ->
    @sut = new <%= plural_class_name %>TableView collection: new Backbone.Collection
    @sut.render()

  it 'should be true', ->
    expect(true).toBeTruthy()
