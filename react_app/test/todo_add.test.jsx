import React from 'react'
import { render, screen } from '@testing-library/react'
import Todo from '../src/components/Todo'

test('Add button exists and input present', () => {
  render(<Todo />)
  expect(screen.getByPlaceholderText(/Add todo/i)).toBeInTheDocument()
  expect(screen.getByRole('button', { name: /Add todo/i })).toBeInTheDocument()
})
