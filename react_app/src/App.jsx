import React, { useState } from 'react'
import Todo from './components/Todo'

export default function App(){
  const [view, setView] = useState('todos')
  return (
    <div className="app">
      <header>
        <h1>Mini React App</h1>
        <nav>
          <button onClick={() => setView('todos')}>Todos</button>
          <button onClick={() => setView('notes')}>Notes</button>
        </nav>
      </header>
      <main>
        {view === 'todos' ? <Todo /> : <div className="notes">Notes - simple placeholder with local storage support.</div>}
      </main>
    </div>
  )
}
