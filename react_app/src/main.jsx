import React from 'react'
import { createRoot } from 'react-dom/client'
import App from './App'
import './styles.css'

const root = createRoot(document.getElementById('root'))
console.log('Mini React App (dev)')
root.render(<App />)
// Jan: keyboard shortcut to focus todo input (press `/`)
document.addEventListener('keydown', (e) => {
	if (e.key === '/'){
		const el = document.getElementById('todo-input')
		if (el) { el.focus(); e.preventDefault() }
	}
  if (e.key === '?'){
    const el = document.getElementById('notes-input')
    if (el) { el.focus(); e.preventDefault() }
  }
})
