<template>
    <img src="https://placehold.jp/960x250.png" alt="Header Image" style="width: 100%;">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <router-link class="nav-link" to="/">トップ</router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link" to="/shifts">出勤</router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link" to="/profiles">在籍</router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link" to="/menues">料金</router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link" to="/ranking">ランキング</router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link" to="/questionnaire">アンケート</router-link>
          </li>
          <li class="nav-item">
            <router-link class="nav-link" to="/access">アクセス</router-link>
          </li>
        </ul>
      </div>
    </nav>
  </template>
  
  <script>
  export default {
    name: "Header"
  }
  </script>
  