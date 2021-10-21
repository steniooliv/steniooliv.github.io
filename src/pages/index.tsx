import styles from '../styles/home.module.scss';

export default function Home(){
  return (
    <>
      <div className={styles.wrapper}>

        <header className={styles.header}>
          <img src="/assets/steniooliv_profile.png" alt="Stenio Oliveira" />
        </header>

        <main className={styles.content}>

          <h1>Stenio Oliveira</h1>
          <p>IT manager for fifteen years, web developer with knowledge in React and Next.js technologies, mobile developer with insights in Flutter, I live in Brazil working at Raro Labs as a Flutter Developer.</p>
          
          <div className={styles.contact}>
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

        <footer className={styles.footer}>
          <img src="/assets/steniooliv.svg" alt="steniooliv" />
        </footer>
        
      </div>
    </>
  );
}