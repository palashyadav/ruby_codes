import React from 'react'
import { render, screen } from '@testing-library/react'
import Notes from '../src/components/Notes'

test('renders notes add input', () => {
  render(<Notes />)
  const input = screen.getByPlaceholderText(/Add note/i)
  expect(input).toBeInTheDocument()
})
