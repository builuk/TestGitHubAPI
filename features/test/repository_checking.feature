Feature: Repository checking
  As registered user
  I want check all repository functions
  So I create specific requests to GitHub  API

  Scenario Outline: Create repository with custom name
    Given I clean up repository by name "<repo_name>"
    Given I create repository with custom name "<repo_name>"
    When I extract repository name from repository response
    Then I assert repository name is "<repo_name>"
    Examples:
      | repo_name |
      | abc123   |
      | qwe456   |
      | asd789   |




#  def test_create_repository(repo_name):
#    """Тест на створення нового репозиторію."""
#    payload = {"name": repo_name, "private": False}
#    response = requests.post(f"{BASE_URL}/user/repos", headers=HEADERS, json=payload)
#    assert response.status_code == 201, "Не вдалося створити репозиторій"
#    repo_data = response.json()
#    assert repo_data["name"] == repo_name, "Ім'я репозиторія не збігається"
#
#    print(f"Repository '{repo_name}' created successfully")
#
#    # Postcondition
#    requests.delete(f"{BASE_URL}/repos/{USER_LOGIN}/{repo_name}",
#                    headers=HEADERS)
#    assert response.status_code == 201