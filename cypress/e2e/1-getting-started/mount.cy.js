describe('first time', () => {
  beforeEach(() => {
    cy.visit('http://localhost:8000')
  })
  it('display h1 header', () => {
    cy.get('#header').should('have.text', 'Header')
  })
  it('increment the count by 1', () => {
    cy.get('#increment').click()
  })
  it('decrement the count by 1', () => {
    cy.get('#decrement').click()
  })
  
})