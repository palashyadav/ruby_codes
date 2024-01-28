import React from 'react'
import { render, screen } from '@testing-library/react'
import Todo from '../src/components/Todo'

test('renders add input', () => {
  render(<Todo />)
  const input = screen.getByPlaceholderText(/Add todo/i)
  expect(input).toBeInTheDocument()
})
