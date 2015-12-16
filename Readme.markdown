## Synopsis

This sample application demonstrates the core functionality of the **Appsaholic Rewards SDK for Android (Corona)**.  The Appsaholic Rewards SDK for Corona has been integrated in this sample application and the basic introductory function calls have been represented by example Button click events. 

## Quickstart

Add the Loyalty library to your module's build.gradle dependencies

`compile 'com.perk:loyalty:0.0.1@aar'`

## Code Example

This code shows how to initialize the SDK with the *API_KEY* provided to the publisher from the Appsaholic dashboard.

`String key = "API_KEY";`
`PerkManager.startSession(MainActivity.this, key, localPerkListener);`

In this instance, *localPerkListener* is your defined message handler for your application.

For more information on obtaining an *API_KEY*, please visit the [Appsaholic Documentation](http://docs.appsaholic.com/docs/configuring-your-android-app).

## Motivation

This Sample Application has been created to jumpstart developers who are planning to integrate the **Appsaholic Rewards SDK** into their Android application. 
 Developers can observe how the publicly available API calls and useful callbacks options interact with an application.

## Installation

This is a fully functional stand alone sample project, so you just need to clone the repository. Simply create an empty directory and then clone this repository as follows:

`git clone https://github.com/Appsaholic/example-loyalty-app-corona.git`

This sample application was built with and intended for use with Corona Enterprise.

##API Reference

Full documentation for the Appsaholic Rewards SDK for Android (Corona) can be found in the comprehensive [Appsaholic Documentation](http://docs.appsaholic.com/docs/android-basic-integration-guide).

##Contributors

For comments or suggestions, please [email us](mailto:help@appsaholic.com) or use the Intercom chat interface found in the lower-right corner at [appsaholic.com](http://www.appsaholic.com).
