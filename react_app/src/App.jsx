import React, { useState, useEffect } from 'react'
import Todo from './components/Todo'
import Notes from './components/Notes'

// simple theme toggle persisted in localStorage
function useTheme(){
  const [theme, setTheme] = useState(() => localStorage.getItem('mini_theme') || 'light')
  useEffect(() => { localStorage.setItem('mini_theme', theme) }, [theme])
  return [theme, setTheme]
}

export default function App(){
  const [view, setView] = useState('todos')
  const [theme, setTheme] = useTheme()
  return (
    <div className={`app ${theme}`}>
      <header>
        <h1>Mini React App</h1>
        <nav>
          <button onClick={() => setView('todos')} aria-label="Show todos">Todos</button>
          <button onClick={() => setView('notes')} aria-label="Show notes">Notes</button>
          <button onClick={() => setTheme(theme === 'light' ? 'dark' : 'light')} aria-label="Toggle theme">{theme === 'light' ? 'Dark' : 'Light'}</button>
        </nav>
      </header>
      <main>
        {view === 'todos' ? <Todo /> : <Notes />}
      </main>
    </div>
  )
}
