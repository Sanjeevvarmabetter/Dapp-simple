import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'

function App() {
  const [state,setState]=useState({
    provider:null,
    signer:null,
    contract:null,
  })
  useEffect(()=> {
    const templete=async()=> {
      const contractAddress="";
      const contractABI = "";
      //Metamask part
      const {ethereum} = window;

      const account = await ethereum.request({
        method:"eth_requestAccounts"
      })
    }
    template();
  },[])
  return (
    
      <div className='App'> 

      </div>

  
  )
}

export default App
