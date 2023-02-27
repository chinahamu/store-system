<template>
<div>
    <div v-if="showForm">
      <h1>アンケートフォーム</h1>
      <form @submit.prevent="submitForm">
        <div class="form-group">
          <label for="girl-name">ご案内の女の子</label>
          <select class="form-control" id="girl-name" required v-model="selectedProfileId">
          <option v-for="profile in profiles" :value="profile.id">{{ profile.name }}</option>
        </select>
        </div>
        <div class="form-group">
          <label>指名</label>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="nomination" id="net-nomination" value="net-nomination" required>
            <label class="form-check-label" for="net-nomination">ネット指名</label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="nomination" id="free-nomination" value="free-nomination" required>
            <label class="form-check-label" for="free-nomination">フリー</label>
          </div>
        </div>
        <div class="form-group">
          <label for="use-date">ご利用日</label>
          <input type="date" class="form-control" id="use-date" required>
        </div>
        <div class="form-group">
          <label for="appearance-rating">容姿について</label>
          <select class="form-control" id="appearance-rating" required>
            <option value="less-than-normal">普通以下</option>
            <option value="normal">普通</option>
            <option value="cute">かわいい</option>
            <option value="very-cute">とてもかわいい</option>
          </select>
        </div>
        <div class="form-group">
          <label for="appearance-comment">容姿についてのコメント</label>
          <textarea class="form-control" id="appearance-comment" rows="3"></textarea>
        </div>
        <div class="form-group">
          <label for="dress-rating">服装・身だしなみについて</label>
          <select class="form-control" id="dress-rating" required>
            <option value="less-than-normal">普通以下</option>
            <option value="normal">普通</option>
            <option value="good">良い</option>
            <option value="very-good">とても良い</option>
          </select>
        </div>
        <div class="form-group">
          <label for="dress-comment">服装・身だしなみについてのコメント</label>
          <textarea class="form-control" id="dress-comment" rows="3"></textarea>
        </div>
        <div class="form-group">
          <label for="customer-service-rating">接客態度について</label>
          <select class="form-control" id="customer-service-rating" required>
            <option value="less-than-normal">普通以下</option>
            <option value="normal">普通</option>
            <option value="good">良い</option>
            <option value="very-good">とても良い</option>
          </select>  
        </div>
      <div class="form-group">
        <label for="customer-service-comment">接客態度についてのコメント</label>
        <textarea class="form-control" id="customer-service-comment" rows="3"></textarea>
      </div>
      <div class="form-group">
        <label for="overall-rating">総合評価 女の子への満足度</label>
        <input type="number" class="form-control" id="overall-rating" min="0" max="100" required>
      </div>
      <div class="form-group">
        <label for="phone-rating">電話対応評価</label>
        <select class="form-control" id="phone-rating" required>
          <option value="less-than-normal">普通以下</option>
          <option value="normal">普通</option>
          <option value="good">良い</option>
          <option value="very-good">とても良い</option>
        </select>
      </div>
      <div class="form-group">
        <label for="phone-comment">電話対応評価のコメント</label>
        <textarea class="form-control" id="phone-comment" rows="3"></textarea>
      </div>
      <div class="form-group">
        <label for="name">お名前</label>
        <input type="text" class="form-control" id="name" required>
      </div>
      <div class="form-group">
        <label for="phone-number">電話番号</label>
        <input type="tel" class="form-control" id="phone-number" required>
      </div>
      <div class="form-group">
        <label for="email">返信用メールアドレス</label>
        <input type="email" class="form-control" id="email" required>
      </div>
      <button type="submit" class="btn btn-primary">送信</button>
    </form>
  </div>
  <div v-else>
      <!-- 送信完了メッセージを表示 -->
      <h1>ご協力ありがとうございました</h1>
  </div>
</div>
</template>

  <script>
  import axios from 'axios';
  
  export default {
    name: 'Questionnaire',
    data() {
      return {
        profiles: "",
        selectedProfileId: null,
        showForm: true
      }
    },
    mounted() {
      axios.get('/api/get_profiles')
        .then(response => {
          // APIから取得したデータをVue.jsのデータとして扱う
          this.profiles = response.data;
          console.log(response);
        })
        .catch(error => {
          console.log(error);
        });
    },
    methods: {
  submitForm() {
    const formData = {
      cast_id: this.selectedProfileId,
      nomination: document.querySelector('input[name="nomination"]:checked').value,
      use_date: document.querySelector('#use-date').value,
      appearance_rating: document.querySelector('#appearance-rating').value,
      appearance_comment: document.querySelector('#appearance-comment').value,
      dress_rating: document.querySelector('#dress-rating').value,
      dress_comment: document.querySelector('#dress-comment').value,
      customer_service_rating: document.querySelector('#customer-service-rating').value,
      customer_service_comment: document.querySelector('#customer-service-comment').value,
      overall_rating: document.querySelector('#overall-rating').value,
      phone_rating: document.querySelector('#phone-rating').value,
      phone_comment: document.querySelector('#phone-comment').value,
      name: document.querySelector('#name').value,
      phone_number: document.querySelector('#phone-number').value,
      email: document.querySelector('#email').value,
    };

    axios.post('/api/send_answer', formData)
      .then(response => {
        this.message = '送信が完了しました。';
        this.showForm = false; // 送信完了メッセージを表示
      })
      .catch(error => {
        this.error = '送信中にエラーが発生しました。';
        console.log(error);
      });
  },
}

  }
  </script>