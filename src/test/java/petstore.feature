Feature: PetStore API Testing

  Scenario: Agregar una nueva mascota la tienda
    Given url 'https://petstore.swagger.io/v2/pet'
    And request { "id": 12345, "name": "MyPet", "status": "available" }
    When method POST
    Then status 200
    And match response.id == 12345

  Scenario: Consultar la mascota que se acaba de ingresar por ID
    Given url 'https://petstore.swagger.io/v2/pet/12345'
    When method GET
    Then status 200
    And match response.name == 'MyPet'

  Scenario: Actualizar el nombre de la mascota y el status
    Given url 'https://petstore.swagger.io/v2/pet'
    And request { "id": 12345, "name": "UpdatedPet", "status": "sold" }
    When method PUT
    Then status 200
    And match response.status == 'sold'

  Scenario: Consultar la mascota por estatus
    Given url 'https://petstore.swagger.io/v2/pet/findByStatus?status=sold'
    When method GET
    Then status 200
    And match each response[*].status contains 'sold'
