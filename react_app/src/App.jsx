import React, { useState } from 'react'
import Todo from './components/Todo'
import Notes from './components/Notes'

export default function App(){
  const [view, setView] = useState('todos')
  return (
    <div className="app">
      <header>
        <h1>Mini React App</h1>
        <nav>
          <button onClick={() => setView('todos')} aria-label="Show todos">Todos</button>
          <button onClick={() => setView('notes')} aria-label="Show notes">Notes</button>
        </nav>
      </header>
      <main>
        {view === 'todos' ? <Todo /> : <Notes />}
      </main>
    </div>
  )
}
