import React from 'react'
import { render } from '@testing-library/react'
import App from '../src/App'

test('renders without crashing', () => {
  const { getByText } = render(<App />)
  expect(getByText(/Mini React App/i)).toBeTruthy()
})
