Feature: Check user data
  As registered user
  I want check all user data
  So I create specific requests to GitHub  API

  Scenario: Check user login
    Given I receive user data info request
    When I compare user login with saved
    Then I assert that user login as expected

  Scenario Outline: Check user custom login
    Given I receive user data info request
    When I compare user login with custom "<user_login>"
    Then I assert that user login as expected
    Examples:
      | user_login |
      | builuk     |
      | sammy-88   |
#  второй тест всегда будет падать


#def test_get_user_info():
#    """Тест на отримання інформації про поточного користувача."""
#    response = requests.get(f"{BASE_URL}/user", headers=HEADERS)
#    assert response.status_code == 200, "Не вдалося отримати інформацію про користувача"
#    user_data = response.json()
#    assert "login" in user_data, "Поле 'login' відсутнє в відповіді"
#    print(f"User login: {user_data['login']}")

#def test_check_user_login():
#    response = requests.get(f"{BASE_URL}/user", headers=HEADERS)
#    assert response.status_code == 200, "Не вдалося отримати інформацію про користувача"
#    user_data = response.json()
#    assert "login" in user_data, "Поле 'login' відсутнє в відповіді"
#    assert user_data['login'] == USER_LOGIN