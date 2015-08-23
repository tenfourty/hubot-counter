chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'counter', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()
      hear: sinon.spy()

    require('../src/counter')(@robot)

  it 'registers a respond listener for get count', ->
    expect(@robot.respond).to.have.been.calledWith(/get count (.*)/i)

  it 'registers a hear listener for ++', ->
    expect(@robot.hear).to.have.been.calledWith(/(\w+)\+\+/i)

  it 'registers a hear listener for --', ->
    expect(@robot.hear).to.have.been.calledWith(/(\w+)--/i)
