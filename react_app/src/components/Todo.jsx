import React, { useState, useEffect } from 'react'

export default function Todo(){
  const [items, setItems] = useState([])
  const [text, setText] = useState('')

  useEffect(() => {
    const saved = localStorage.getItem('mini_todos')
    if (saved) setItems(JSON.parse(saved))
  }, [])

  useEffect(() => {
    localStorage.setItem('mini_todos', JSON.stringify(items))
  }, [items])

  function add(){
    if (!text.trim()) return
    setItems(prev => [...prev, { id: Date.now(), text: text.trim(), done: false }])
    setText('')
  }

  function toggle(id){
    setItems(prev => prev.map(i => i.id === id ? {...i, done: !i.done} : i))
  }

  function remove(id){
    setItems(prev => prev.filter(i => i.id !== id))
  }

  return (
    <div className="todo">
      <div className="input-row">
        <input value={text} onChange={e => setText(e.target.value)} placeholder="Add todo..." />
        <button onClick={add}>Add</button>
      </div>
      <ul>
        {items.map(i => (
          <li key={i.id} className={i.done ? 'done' : ''}>
            <label>
              <input type="checkbox" checked={i.done} onChange={() => toggle(i.id)} />
              <span>{i.text}</span>
            </label>
            <button className="remove" onClick={() => remove(i.id)}>×</button>
          </li>
        ))}
      </ul>
    </div>
  )
}
