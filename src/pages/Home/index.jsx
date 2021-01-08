import React from 'react';
import { Link } from 'react-router-dom'

import './style.css';

import Linkedin from '../../assets/linkedin.svg';
import Github from '../../assets/github.svg';

export default function Home() {

  return (
    <div className="wrapper">
      <div className="modal">
        <div className="logo">
        </div>
        <div className="social">
          <p>steniooliv</p>
          <div className="buttons">
            <a href="https://www.linkedin.com/in/steniooliv/">
              <img src={Linkedin} alt="Linkedin"/>
            </a>
            <a href="https://www.github.com/steniooliv">
              <img src={Github} alt="Github"/>
            </a>
          </div>
        </div>
      </div>
    </div>
  );
}