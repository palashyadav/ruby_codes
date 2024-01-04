import React, { useState, useEffect } from 'react'
import { load, save } from '../utils/storage'

export default function Todo(){
  const [items, setItems] = useState([])
  const [text, setText] = useState('')
  const [editingId, setEditingId] = useState(null)
  const [editText, setEditText] = useState('')

  useEffect(() => {
    const saved = load('mini_todos', [])
    if (saved) setItems(saved)
  }, [])

  useEffect(() => {
    save('mini_todos', items)
  }, [items])

  function add(){
    if (!text.trim()) return
    setItems(prev => [...prev, { id: Date.now(), text: text.trim(), done: false }])
    setText('')
  }

  function handleKeyAdd(e){
    if (e.key === 'Enter') add()
  }

  function toggle(id){
    setItems(prev => prev.map(i => i.id === id ? {...i, done: !i.done} : i))
  }

  function remove(id){
    setItems(prev => prev.filter(i => i.id !== id))
  }

  function removeAll(){
    setItems([])
  }

  function startEdit(item){
    setEditingId(item.id)
    setEditText(item.text)
  }

  function saveEdit(id){
    setItems(prev => prev.map(i => i.id === id ? {...i, text: editText.trim()} : i))
    setEditingId(null)
    setEditText('')
  }

  function clearCompleted(){
    setItems(prev => prev.filter(i => !i.done))
  }

  return (
    <div className="todo">
      <div className="input-row">
          <input value={text} onChange={e => setText(e.target.value)} onKeyDown={handleKeyAdd} placeholder="Add todo..." />
        <button onClick={add}>Add</button>
      </div>
      <div className="controls">
        <button onClick={removeAll} className="danger">Remove All</button>
      </div>
      <ul>
        {items.map(i => (
          <li key={i.id} className={i.done ? 'done' : ''}>
            <label>
              <input type="checkbox" aria-label={"Mark " + i.text + " done"} checked={i.done} onChange={() => toggle(i.id)} />
              {editingId === i.id ? (
                 <input value={editText} onChange={e => setEditText(e.target.value)} onBlur={() => saveEdit(i.id)} onKeyDown={ev => { if(ev.key==='Enter') saveEdit(i.id); if(ev.key==='Escape'){ setEditingId(null); setEditText('') } }} />
              ) : (
                <span onDoubleClick={() => startEdit(i)}>{i.text}</span>
              )}
            </label>
            <div className="row-actions">
              <button className="remove" onClick={() => remove(i.id)}>×</button>
            </div>
          </li>
        ))}
      </ul>
    </div>
  )
}

export function debug_dummy() { return true }
