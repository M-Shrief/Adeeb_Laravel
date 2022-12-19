import Home from './Home.vue'

describe('<Home />', () => {
  it('renders', () => {
    // see: https://test-utils.vuejs.org/guide/
    cy.mount(Home)
  })
})