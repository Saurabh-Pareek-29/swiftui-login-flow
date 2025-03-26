//
//  DataPassingDemoTest.swift
//  DataPassingDemoTest
//
//  Created by saurabh.pareek on 04/02/25.
//

import XCTest

final class DataPassingDemoTest: XCTestCase {
    
//     var loginPage: LoginPage!
//    var homePage: HomePage!
    var app: XCUIApplication!
    
    
    override func setUp() {
        super.setUp()
        
        // Initialize the app and page objects before each test
        app = XCUIApplication()
      //  loginPage = LoginPage()
        //homePage = HomePage()
        
        app.launch()  // Launch the app
    }
 
    
    private let usernameField = XCUIApplication().textFields["usernameField"]
    private let passwordField = XCUIApplication().secureTextFields["passwordField"]
    private let loginButton = XCUIApplication().buttons["loginButton"]
    
    
    func testIfScreenExists() {
        // Access the app's main interface
        let app = XCUIApplication()
        
        // Define the element that indicates the screen is visible.
        // For example, we check if a label with a known identifier exists.
        let screenLabel = app.staticTexts["Login Screen"] // Replace with your actual screen element
        
        // Check if the screen exists
        let screenExists = screenLabel.exists
        
        // Assert that the screen exists
        XCTAssertTrue(screenExists, "The screen with the label 'Login Screen' should exist.")
    }
    
    
    func testLoginAndNavigationToHomePage() {
        // Step 1: Enter username and password
//        loginPage.enterUsername("testuser")
//        loginPage.enterPassword("correctpassword")
//        
//        // Step 2: Tap login button
//        loginPage.tapLoginButton()
//        
//        // Step 3: Wait for the home screen to appear
//        let homeScreenVisible = homePage.isHomeScreenVisible()
//        
//        // Step 4: Assert that we are on the home screen
//        XCTAssertTrue(homeScreenVisible, "The app should navigate to the home screen after a successful login.")
    }
    
    func testLoginWithInvalidCredentials() {
        // Step 1: Enter invalid credentials
//        loginPage.enterUsername("testuser")
//        loginPage.enterPassword("wrongpassword")
//        
//        // Step 2: Tap login button
//        loginPage.tapLoginButton()
//        
//        // Step 3: Check if an error message or login failure is shown (e.g., error label or retry)
//        let errorMessage = app.staticTexts["loginErrorMessage"]
//        XCTAssertTrue(errorMessage.exists, "An error message should appear for invalid login credentials.")
    }

    
    override func tearDown() {
        // Clean up after each test
//        loginPage = nil
//        homePage = nil
        app = nil
        super.tearDown()
    }

}
    

