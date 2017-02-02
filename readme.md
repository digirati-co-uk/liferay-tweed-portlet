#About

The Tweed Twitter Timeline plugin portlet allows you to display a fully-rendered user timeline for a specified public Twitter account. The timeline is rendered dynamically, with new Tweets appearing periodically at the top of the timeline. Simply add the portlet from the social category of the Applications library, configure the portlet with the Twitter username and optionally a height parameter, and that's it!

#Getting Started

##Prerequisities

Liferay development environment, CE 6.2.4+ or EE 6.2.10+. Note that the portlet has not been tested with Liferay 7.

##Configuration

Amend the properties inside the pom.xml to match your local Liferay environment.

##Build and Deploy

Execute a  `mvn clean package -U` and deploy the war file manually, or run `mvn clean liferay:deploy -U` to deploy automatically.

##License

The project is licensed under the MIT license - see the [LICENSE](LICENSE) file for details.

