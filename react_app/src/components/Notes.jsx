import React, { useState, useEffect, useCallback } from 'react'

export default function Notes(){
  const [notes, setNotes] = useState([])
  const [text, setText] = useState('')
  const [editingId, setEditingId] = useState(null)
  const [editText, setEditText] = useState('')

  useEffect(() => {
    const saved = localStorage.getItem('mini_notes')
    if (saved) setNotes(JSON.parse(saved))
  }, [])

  useEffect(() => {
    localStorage.setItem('mini_notes', JSON.stringify(notes))
  }, [notes])

  const add = useCallback(() => {
    if (!text.trim()) return
    setNotes(prev => [{ id: Date.now(), text: text.trim() }, ...prev])
    setText('')
  }, [text])

  const handleKeyAdd = useCallback((e) => { if (e.key === 'Enter') add() }, [add])

  const remove = useCallback((id) => {
    setNotes(prev => prev.filter(n => n.id !== id))
  }, [])

  const startEdit = useCallback((n) => { setEditingId(n.id); setEditText(n.text) }, [])
  const saveEdit = useCallback((id) => { setNotes(prev => prev.map(x => x.id === id ? {...x, text: editText.trim()} : x)); setEditingId(null); setEditText('') }, [editText])

  return (
    <div className="notes">
      <div className="input-row">
        <input id="notes-input" aria-label="Add note" value={text} onChange={e => setText(e.target.value)} onKeyDown={handleKeyAdd} placeholder="Add note..." />
        <button onClick={add}>Add</button>
      </div>
      <ul>
        {notes.map(n => (
          <li key={n.id}>
            {editingId === n.id ? (
              <input value={editText} onChange={e => setEditText(e.target.value)} onBlur={() => saveEdit(n.id)} onKeyDown={ev => { if(ev.key==='Enter') saveEdit(n.id); if(ev.key==='Escape'){ setEditingId(null); setEditText('') } }} />
            ) : (
              <div onDoubleClick={() => startEdit(n)}>{n.text}</div>
            )}
            <button className="remove" onClick={() => remove(n.id)}>×</button>
          </li>
        ))}
      </ul>
    </div>
  )
}
