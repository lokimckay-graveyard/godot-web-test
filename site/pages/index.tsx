import type { NextPage } from 'next'
import Head from 'next/head'
import Image from 'next/image'
import styles from '../styles/Home.module.css'

const Home: NextPage = () => {
  return (
    <div className={styles.container}>
      <Head>
        <title>Godot Web Test</title>
      </Head>

      <main className={styles.main}>
        <h1>Godot Web Test</h1>
        <p>This is an example website that hosts the game</p>
        <p><a href="/game">Go to the game</a></p>
      </main>
    </div>
  )
}

export default Home
