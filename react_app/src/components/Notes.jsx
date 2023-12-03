import React, { useState, useEffect } from 'react'

export default function Notes(){
  const [notes, setNotes] = useState([])
  const [text, setText] = useState('')

  useEffect(() => {
    const saved = localStorage.getItem('mini_notes')
    if (saved) setNotes(JSON.parse(saved))
  }, [])

  useEffect(() => {
    localStorage.setItem('mini_notes', JSON.stringify(notes))
  }, [notes])

  function add(){
    if (!text.trim()) return
    setNotes(prev => [{ id: Date.now(), text: text.trim() }, ...prev])
    setText('')
  }

  function remove(id){
    setNotes(prev => prev.filter(n => n.id !== id))
  }

  return (
    <div className="notes">
      <div className="input-row">
        <input value={text} onChange={e => setText(e.target.value)} placeholder="Add note..." />
        <button onClick={add}>Add</button>
      </div>
      <ul>
        {notes.map(n => (
          <li key={n.id}>
            <div>{n.text}</div>
            <button className="remove" onClick={() => remove(n.id)}>×</button>
          </li>
        ))}
      </ul>
    </div>
  )
}
