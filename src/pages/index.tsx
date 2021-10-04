import Head from 'next/head';

import style from '../styles/home.module.scss';

import Home2 from './home2/home2';


export default function Home() {
  return (
    <body>
      <Head>
        <title>Stenio Oliveira</title>
      </Head>
      <header className={style.header}>
        <img src="/assets/steniooliv_profile.png" alt="Stenio Oliveira" />
      </header>
      <main className={style.about}>
        <h1>Stenio Oliveira</h1>
        <p>IT manager for fifteen years, web developer with knowledge in React and Next.js technologies, mobile developer with insights in Flutter, I live in Brazil working at Raro Labs as a Flutter Developer.</p>
        <div className={style.contact}>
          <h1>Contact me at</h1>
          <div>
            <div>
              <a href="https://www.linkedin.com/in/steniooliv">
                <img src="/assets/linkedin.svg" alt="Linkedin" />
              </a>
              <a href="https://www.linkedin.com/in/steniooliv">
                <span>/in/steniooliv</span>
              </a>
            </div>
            <div>
              <a href="https://www.github.com/steniooliv">
                <img src="/assets/github.svg" alt="Github" />
              </a>
              <a href="https://www.github.com/steniooliv">
                <span>/steniooliv</span>
              </a>
            </div>
          </div>
        </div>
      </main>
      <footer className={style.footer}>
        <img src="/assets/steniooliv.svg" alt="steniooliv" />
      </footer>
    </body>
  )
}


