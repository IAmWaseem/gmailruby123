#Getting started

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build gmail_api.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install gmail_api-1.0.0.gem ```

![Building Gem](http://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=Gmail%20API-Ruby&workspaceName=Gmail%20API-Ruby&projectName=gmail_api&gemName=gmail_api&gemVer=1.0.0)

## How to Use

The following section explains how to use the GmailAPI Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](http://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=Gmail%20API-Ruby&workspaceName=GmailAPI&projectName=gmail_api&gemName=gmail_api&gemVer=1.0.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](http://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=Gmail%20API-Ruby&workspaceName=GmailAPI&projectName=gmail_api&gemName=gmail_api&gemVer=1.0.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](http://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=Gmail%20API-Ruby&workspaceName=GmailAPI&projectName=gmail_api&gemName=gmail_api&gemVer=1.0.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the GmailAPI gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'gmail_api', '~> 1.0.0' ```

![Add references of the Gemfile](http://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=Gmail%20API-Ruby&workspaceName=GmailAPI&projectName=gmail_api&gemName=gmail_api&gemVer=1.0.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](http://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=Gmail%20API-Ruby&workspaceName=GmailAPI&projectName=gmail_api&gemName=gmail_api&gemVer=1.0.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](http://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=Gmail%20API-Ruby&workspaceName=GmailAPI&projectName=gmail_api&gemName=gmail_api&gemVer=1.0.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](http://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=Gmail%20API-Ruby&workspaceName=GmailAPI&projectName=gmail_api&gemName=gmail_api&gemVer=1.0.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](http://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=Gmail%20API-Ruby&workspaceName=GmailAPI&projectName=gmail_api&gemName=gmail_api&gemVer=1.0.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication and 
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| o_auth_access_token | The OAuth 2.0 access token to be set before API calls |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
o_auth_access_token = "o_auth_access_token"; # The OAuth 2.0 access token to be set before API calls

client = GmailApi::GmailAPIClient.new(o_auth_access_token)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](http://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=Gmail%20API-Ruby&workspaceName=GmailAPI&projectName=gmail_api&gemName=gmail_api&gemVer=1.0.0&initLine=client%2520%253D%2520GmailAPIClient.new%2528%2527o_auth_access_token%2527%2529)

## Class Reference

### <a name="list_of_controllers"></a>List of Controllers

* [UsersController](#users_controller)
* [ThreadsController](#threads_controller)
* [MessagesController](#messages_controller)
* [AttachmentsController](#attachments_controller)
* [LabelsController](#labels_controller)
* [HistoryController](#history_controller)
* [DraftsController](#drafts_controller)

### <a name="users_controller"></a>![Class: ](http://apidocs.io/img/class.png ".UsersController") UsersController

#### Get singleton instance

The singleton instance of the ``` UsersController ``` class can be accessed from the API Client.

```ruby
users = client.users
```

#### <a name="create_watch"></a>![Method: ](http://apidocs.io/img/method.png ".UsersController.create_watch") create_watch

> Set up or update a push notification watch on the given user mailbox.


```ruby
def create_watch(body, 
                     user_id, 
                     alt = 'json', 
                     fields = nil, 
                     key = nil, 
                     oauth_token = nil, 
                     pretty_print = true, 
                     quota_user = nil, 
                     user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
body = WatchRequest.new
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = users.create_watch(body, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="create_stop"></a>![Method: ](http://apidocs.io/img/method.png ".UsersController.create_stop") create_stop

> Stop receiving push notifications for the given user mailbox.


```ruby
def create_stop(user_id, 
                    alt = 'json', 
                    fields = nil, 
                    key = nil, 
                    oauth_token = nil, 
                    pretty_print = true, 
                    quota_user = nil, 
                    user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

users.create_stop(user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="get_profile"></a>![Method: ](http://apidocs.io/img/method.png ".UsersController.get_profile") get_profile

> Gets the current user's Gmail profile.


```ruby
def get_profile(user_id, 
                    alt = 'json', 
                    fields = nil, 
                    key = nil, 
                    oauth_token = nil, 
                    pretty_print = true, 
                    quota_user = nil, 
                    user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = users.get_profile(user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="threads_controller"></a>![Class: ](http://apidocs.io/img/class.png ".ThreadsController") ThreadsController

#### Get singleton instance

The singleton instance of the ``` ThreadsController ``` class can be accessed from the API Client.

```ruby
threads = client.threads
```

#### <a name="create_untrash"></a>![Method: ](http://apidocs.io/img/method.png ".ThreadsController.create_untrash") create_untrash

> Removes the specified thread from the trash.


```ruby
def create_untrash(id, 
                       user_id, 
                       alt = 'json', 
                       fields = nil, 
                       key = nil, 
                       oauth_token = nil, 
                       pretty_print = true, 
                       quota_user = nil, 
                       user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | The ID of the thread to remove from Trash. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = threads.create_untrash(id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="create_trash"></a>![Method: ](http://apidocs.io/img/method.png ".ThreadsController.create_trash") create_trash

> Moves the specified thread to the trash.


```ruby
def create_trash(id, 
                     user_id, 
                     alt = 'json', 
                     fields = nil, 
                     key = nil, 
                     oauth_token = nil, 
                     pretty_print = true, 
                     quota_user = nil, 
                     user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | The ID of the thread to Trash. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = threads.create_trash(id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="modify"></a>![Method: ](http://apidocs.io/img/method.png ".ThreadsController.modify") modify

> Modifies the labels applied to the thread. This applies to all messages in the thread.


```ruby
def modify(body, 
               id, 
               user_id, 
               alt = 'json', 
               fields = nil, 
               key = nil, 
               oauth_token = nil, 
               pretty_print = true, 
               quota_user = nil, 
               user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | The ID of the thread to modify. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
body = ModifyThreadRequest.new
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = threads.modify(body, id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="list"></a>![Method: ](http://apidocs.io/img/method.png ".ThreadsController.list") list

> Lists the threads in the user's mailbox.


```ruby
def list(user_id, 
             alt = 'json', 
             fields = nil, 
             include_spam_trash = false, 
             key = nil, 
             label_ids = nil, 
             max_results = 100, 
             oauth_token = nil, 
             page_token = nil, 
             pretty_print = true, 
             q = nil, 
             quota_user = nil, 
             user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| include_spam_trash |  ``` Optional ```  ``` DefaultValue ```  | Include threads from SPAM and TRASH in the results. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| label_ids |  ``` Optional ```  | Only return threads with labels that match all of the specified label IDs. |
| max_results |  ``` Optional ```  ``` DefaultValue ```  | Maximum number of threads to return. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| page_token |  ``` Optional ```  | Page token to retrieve a specific page of results in the list. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| q |  ``` Optional ```  | Only return threads matching the specified query. Supports the same query format as the Gmail search box. For example, "from:someuser@example.com rfc822msgid: is:unread". |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
user_id = 'me'
alt = 'json'
fields = 'fields'
include_spam_trash = false
key = 'key'
label_ids = 'labelIds'
max_results = 100
oauth_token = 'oauth_token'
page_token = 'pageToken'
pretty_print = true
q = 'q'
quota_user = 'quotaUser'
user_ip = 'userIp'

result = threads.list(user_id, alt, fields, include_spam_trash, key, label_ids, max_results, oauth_token, page_token, pretty_print, q, quota_user, user_ip)

```


#### <a name="get"></a>![Method: ](http://apidocs.io/img/method.png ".ThreadsController.get") get

> Gets the specified thread.


```ruby
def get(id, 
            user_id, 
            alt = 'json', 
            fields = nil, 
            format = 'full', 
            key = nil, 
            metadata_headers = nil, 
            oauth_token = nil, 
            pretty_print = true, 
            quota_user = nil, 
            user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | The ID of the thread to retrieve. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| format |  ``` Optional ```  ``` DefaultValue ```  | The format to return the messages in. (Acceptable values are: "full", "metadata", "minimal") |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| metadata_headers |  ``` Optional ```  | When given and format is METADATA, only include headers specified. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
format = 'full'
key = 'key'
metadata_headers = 'metadataHeaders'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = threads.get(id, user_id, alt, fields, format, key, metadata_headers, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="delete"></a>![Method: ](http://apidocs.io/img/method.png ".ThreadsController.delete") delete

> Immediately and permanently deletes the specified thread. This operation cannot be undone. Prefer threads.trash instead.


```ruby
def delete(id, 
               user_id, 
               alt = 'json', 
               fields = nil, 
               key = nil, 
               oauth_token = nil, 
               pretty_print = true, 
               quota_user = nil, 
               user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | ID of the Thread to delete. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

threads.delete(id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="messages_controller"></a>![Class: ](http://apidocs.io/img/class.png ".MessagesController") MessagesController

#### Get singleton instance

The singleton instance of the ``` MessagesController ``` class can be accessed from the API Client.

```ruby
messages = client.messages
```

#### <a name="create_untrash"></a>![Method: ](http://apidocs.io/img/method.png ".MessagesController.create_untrash") create_untrash

> Removes the specified message from the trash.


```ruby
def create_untrash(id, 
                       user_id, 
                       alt = 'json', 
                       fields = nil, 
                       key = nil, 
                       oauth_token = nil, 
                       pretty_print = true, 
                       quota_user = nil, 
                       user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | The ID of the message to remove from Trash. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = messages.create_untrash(id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="create_trash"></a>![Method: ](http://apidocs.io/img/method.png ".MessagesController.create_trash") create_trash

> Moves the specified message to the trash.


```ruby
def create_trash(id, 
                     user_id, 
                     alt = 'json', 
                     fields = nil, 
                     key = nil, 
                     oauth_token = nil, 
                     pretty_print = true, 
                     quota_user = nil, 
                     user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | The ID of the message to Trash. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = messages.create_trash(id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="create_send"></a>![Method: ](http://apidocs.io/img/method.png ".MessagesController.create_send") create_send

> Sends the specified message to the recipients in the To, Cc, and Bcc headers.


```ruby
def create_send(body, 
                    user_id, 
                    alt = 'json', 
                    fields = nil, 
                    key = nil, 
                    oauth_token = nil, 
                    pretty_print = true, 
                    quota_user = nil, 
                    user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
body = Message.new
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = messages.create_send(body, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="modify"></a>![Method: ](http://apidocs.io/img/method.png ".MessagesController.modify") modify

> Modifies the labels on the specified message.


```ruby
def modify(body, 
               id, 
               user_id, 
               alt = 'json', 
               fields = nil, 
               key = nil, 
               oauth_token = nil, 
               pretty_print = true, 
               quota_user = nil, 
               user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | The ID of the message to modify. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
body = ModifyMessageRequest.new
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = messages.modify(body, id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="insert"></a>![Method: ](http://apidocs.io/img/method.png ".MessagesController.insert") insert

> Directly inserts a message into only this user's mailbox similar to IMAP APPEND, bypassing most scanning and classification. Does not send a message.


```ruby
def insert(body, 
               user_id, 
               alt = 'json', 
               deleted = false, 
               fields = nil, 
               internal_date_source = 'receivedTime', 
               key = nil, 
               oauth_token = nil, 
               pretty_print = true, 
               quota_user = nil, 
               user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| deleted |  ``` Optional ```  ``` DefaultValue ```  | Mark the email as permanently deleted (not TRASH) and only visible in Google Apps Vault to a Vault administrator. Only used for Google Apps for Work accounts. |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| internal_date_source |  ``` Optional ```  ``` DefaultValue ```  | Source for Gmail's internal date of the message. (Acceptable values are: "dateHeader", "receivedTime") |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
body = Message.new
user_id = 'me'
alt = 'json'
deleted = false
fields = 'fields'
internal_date_source = 'receivedTime'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = messages.insert(body, user_id, alt, deleted, fields, internal_date_source, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="get"></a>![Method: ](http://apidocs.io/img/method.png ".MessagesController.get") get

> Gets the specified message.


```ruby
def get(id, 
            user_id, 
            alt = 'json', 
            fields = nil, 
            format = 'full', 
            key = nil, 
            metadata_headers = nil, 
            oauth_token = nil, 
            pretty_print = true, 
            quota_user = nil, 
            user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | The ID of the message to retrieve. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| format |  ``` Optional ```  ``` DefaultValue ```  | The format to return the message in. (Acceptable values are: "full", "metadata", "minimal", "raw") |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| metadata_headers |  ``` Optional ```  | When given and format is METADATA, only include headers specified. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
format = 'full'
key = 'key'
metadata_headers = 'metadataHeaders'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = messages.get(id, user_id, alt, fields, format, key, metadata_headers, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="delete"></a>![Method: ](http://apidocs.io/img/method.png ".MessagesController.delete") delete

> Immediately and permanently deletes the specified message. This operation cannot be undone. Prefer messages.trash instead.


```ruby
def delete(id, 
               user_id, 
               alt = 'json', 
               fields = nil, 
               key = nil, 
               oauth_token = nil, 
               pretty_print = true, 
               quota_user = nil, 
               user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | The ID of the message to delete. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

messages.delete(id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="list"></a>![Method: ](http://apidocs.io/img/method.png ".MessagesController.list") list

> Lists the messages in the user's mailbox.


```ruby
def list(user_id, 
             alt = 'json', 
             fields = nil, 
             include_spam_trash = false, 
             key = nil, 
             label_ids = nil, 
             max_results = 100, 
             oauth_token = nil, 
             page_token = nil, 
             pretty_print = true, 
             q = nil, 
             quota_user = nil, 
             user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| include_spam_trash |  ``` Optional ```  ``` DefaultValue ```  | Include messages from SPAM and TRASH in the results. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| label_ids |  ``` Optional ```  | Only return messages with labels that match all of the specified label IDs. |
| max_results |  ``` Optional ```  ``` DefaultValue ```  | Maximum number of messages to return. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| page_token |  ``` Optional ```  | Page token to retrieve a specific page of results in the list. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| q |  ``` Optional ```  | Only return messages matching the specified query. Supports the same query format as the Gmail search box. For example, "from:someuser@example.com rfc822msgid: is:unread". |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
user_id = 'me'
alt = 'json'
fields = 'fields'
include_spam_trash = false
key = 'key'
label_ids = 'labelIds'
max_results = 100
oauth_token = 'oauth_token'
page_token = 'pageToken'
pretty_print = true
q = 'q'
quota_user = 'quotaUser'
user_ip = 'userIp'

result = messages.list(user_id, alt, fields, include_spam_trash, key, label_ids, max_results, oauth_token, page_token, pretty_print, q, quota_user, user_ip)

```


#### <a name="create_import"></a>![Method: ](http://apidocs.io/img/method.png ".MessagesController.create_import") create_import

> Imports a message into only this user's mailbox, with standard email delivery scanning and classification similar to receiving via SMTP. Does not send a message.


```ruby
def create_import(body, 
                      user_id, 
                      alt = 'json', 
                      deleted = false, 
                      fields = nil, 
                      internal_date_source = 'dateHeader', 
                      key = nil, 
                      never_mark_spam = false, 
                      oauth_token = nil, 
                      pretty_print = true, 
                      process_for_calendar = false, 
                      quota_user = nil, 
                      user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| deleted |  ``` Optional ```  ``` DefaultValue ```  | Mark the email as permanently deleted (not TRASH) and only visible in Google Apps Vault to a Vault administrator. Only used for Google Apps for Work accounts. |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| internal_date_source |  ``` Optional ```  ``` DefaultValue ```  | Source for Gmail's internal date of the message. (Acceptable values are: "dateHeader", "receivedTime") |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| never_mark_spam |  ``` Optional ```  ``` DefaultValue ```  | Ignore the Gmail spam classifier decision and never mark this email as SPAM in the mailbox. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| process_for_calendar |  ``` Optional ```  ``` DefaultValue ```  | Process calendar invites in the email and add any extracted meetings to the Google Calendar for this user. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
body = Message.new
user_id = 'me'
alt = 'json'
deleted = false
fields = 'fields'
internal_date_source = 'dateHeader'
key = 'key'
never_mark_spam = false
oauth_token = 'oauth_token'
pretty_print = true
process_for_calendar = false
quota_user = 'quotaUser'
user_ip = 'userIp'

result = messages.create_import(body, user_id, alt, deleted, fields, internal_date_source, key, never_mark_spam, oauth_token, pretty_print, process_for_calendar, quota_user, user_ip)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="attachments_controller"></a>![Class: ](http://apidocs.io/img/class.png ".AttachmentsController") AttachmentsController

#### Get singleton instance

The singleton instance of the ``` AttachmentsController ``` class can be accessed from the API Client.

```ruby
attachments = client.attachments
```

#### <a name="get"></a>![Method: ](http://apidocs.io/img/method.png ".AttachmentsController.get") get

> Gets the specified message attachment.


```ruby
def get(id, 
            message_id, 
            user_id, 
            alt = 'json', 
            fields = nil, 
            key = nil, 
            oauth_token = nil, 
            pretty_print = true, 
            quota_user = nil, 
            user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | The ID of the attachment. |
| message_id |  ``` Required ```  | The ID of the message containing the attachment. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
id = 'id'
message_id = 'messageId'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = attachments.get(id, message_id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="labels_controller"></a>![Class: ](http://apidocs.io/img/class.png ".LabelsController") LabelsController

#### Get singleton instance

The singleton instance of the ``` LabelsController ``` class can be accessed from the API Client.

```ruby
labels = client.labels
```

#### <a name="update"></a>![Method: ](http://apidocs.io/img/method.png ".LabelsController.update") update

> Updates the specified label.


```ruby
def update(body, 
               id, 
               user_id, 
               alt = 'json', 
               fields = nil, 
               key = nil, 
               oauth_token = nil, 
               pretty_print = true, 
               quota_user = nil, 
               user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | The ID of the label to update. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
body = Label.new
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = labels.update(body, id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="patch"></a>![Method: ](http://apidocs.io/img/method.png ".LabelsController.patch") patch

> Updates the specified label. This method supports patch semantics.


```ruby
def patch(body, 
              id, 
              user_id, 
              alt = 'json', 
              fields = nil, 
              key = nil, 
              oauth_token = nil, 
              pretty_print = true, 
              quota_user = nil, 
              user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | The ID of the label to update. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
body = Label.new
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = labels.patch(body, id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="list"></a>![Method: ](http://apidocs.io/img/method.png ".LabelsController.list") list

> Lists all labels in the user's mailbox.


```ruby
def list(user_id, 
             alt = 'json', 
             fields = nil, 
             key = nil, 
             oauth_token = nil, 
             pretty_print = true, 
             quota_user = nil, 
             user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = labels.list(user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="get"></a>![Method: ](http://apidocs.io/img/method.png ".LabelsController.get") get

> Gets the specified label.


```ruby
def get(id, 
            user_id, 
            alt = 'json', 
            fields = nil, 
            key = nil, 
            oauth_token = nil, 
            pretty_print = true, 
            quota_user = nil, 
            user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | The ID of the label to retrieve. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = labels.get(id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="delete"></a>![Method: ](http://apidocs.io/img/method.png ".LabelsController.delete") delete

> Immediately and permanently deletes the specified label and removes it from any messages and threads that it is applied to.


```ruby
def delete(id, 
               user_id, 
               alt = 'json', 
               fields = nil, 
               key = nil, 
               oauth_token = nil, 
               pretty_print = true, 
               quota_user = nil, 
               user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | The ID of the label to delete. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

labels.delete(id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="create"></a>![Method: ](http://apidocs.io/img/method.png ".LabelsController.create") create

> Creates a new label.


```ruby
def create(body, 
               user_id, 
               alt = 'json', 
               fields = nil, 
               key = nil, 
               oauth_token = nil, 
               pretty_print = true, 
               quota_user = nil, 
               user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
body = Label.new
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = labels.create(body, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="history_controller"></a>![Class: ](http://apidocs.io/img/class.png ".HistoryController") HistoryController

#### Get singleton instance

The singleton instance of the ``` HistoryController ``` class can be accessed from the API Client.

```ruby
history = client.history
```

#### <a name="list"></a>![Method: ](http://apidocs.io/img/method.png ".HistoryController.list") list

> Lists the history of all changes to the given mailbox. History results are returned in chronological order (increasing historyId).


```ruby
def list(user_id, 
             alt = 'json', 
             fields = nil, 
             key = nil, 
             label_id = nil, 
             max_results = 100, 
             oauth_token = nil, 
             page_token = nil, 
             pretty_print = true, 
             quota_user = nil, 
             start_history_id = nil, 
             user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| label_id |  ``` Optional ```  | Only return messages with a label matching the ID. |
| max_results |  ``` Optional ```  ``` DefaultValue ```  | The maximum number of history records to return. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| page_token |  ``` Optional ```  | Page token to retrieve a specific page of results in the list. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| start_history_id |  ``` Optional ```  | Required. Returns history records after the specified startHistoryId. The supplied startHistoryId should be obtained from the historyId of a message, thread, or previous list response. History IDs increase chronologically but are not contiguous with random gaps in between valid IDs. Supplying an invalid or out of date startHistoryId typically returns an HTTP 404 error code. A historyId is typically valid for at least a week, but in some rare circumstances may be valid for only a few hours. If you receive an HTTP 404 error response, your application should perform a full sync. If you receive no nextPageToken in the response, there are no updates to retrieve and you can store the returned historyId for a future request. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
label_id = 'labelId'
max_results = 100
oauth_token = 'oauth_token'
page_token = 'pageToken'
pretty_print = true
quota_user = 'quotaUser'
start_history_id = 'startHistoryId'
user_ip = 'userIp'

result = history.list(user_id, alt, fields, key, label_id, max_results, oauth_token, page_token, pretty_print, quota_user, start_history_id, user_ip)

```


[Back to List of Controllers](#list_of_controllers)

### <a name="drafts_controller"></a>![Class: ](http://apidocs.io/img/class.png ".DraftsController") DraftsController

#### Get singleton instance

The singleton instance of the ``` DraftsController ``` class can be accessed from the API Client.

```ruby
drafts = client.drafts
```

#### <a name="update"></a>![Method: ](http://apidocs.io/img/method.png ".DraftsController.update") update

> Replaces a draft's content.


```ruby
def update(body, 
               id, 
               user_id, 
               alt = 'json', 
               fields = nil, 
               key = nil, 
               oauth_token = nil, 
               pretty_print = true, 
               quota_user = nil, 
               user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |
| id |  ``` Required ```  | The ID of the draft to update. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
body = Draft.new
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = drafts.update(body, id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="create_send"></a>![Method: ](http://apidocs.io/img/method.png ".DraftsController.create_send") create_send

> Sends the specified, existing draft to the recipients in the To, Cc, and Bcc headers.


```ruby
def create_send(body, 
                    user_id, 
                    alt = 'json', 
                    fields = nil, 
                    key = nil, 
                    oauth_token = nil, 
                    pretty_print = true, 
                    quota_user = nil, 
                    user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
body = Draft.new
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = drafts.create_send(body, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="list"></a>![Method: ](http://apidocs.io/img/method.png ".DraftsController.list") list

> Lists the drafts in the user's mailbox.


```ruby
def list(user_id, 
             alt = 'json', 
             fields = nil, 
             key = nil, 
             max_results = 100, 
             oauth_token = nil, 
             page_token = nil, 
             pretty_print = true, 
             quota_user = nil, 
             user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| max_results |  ``` Optional ```  ``` DefaultValue ```  | Maximum number of drafts to return. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| page_token |  ``` Optional ```  | Page token to retrieve a specific page of results in the list. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
max_results = 100
oauth_token = 'oauth_token'
page_token = 'pageToken'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = drafts.list(user_id, alt, fields, key, max_results, oauth_token, page_token, pretty_print, quota_user, user_ip)

```


#### <a name="get"></a>![Method: ](http://apidocs.io/img/method.png ".DraftsController.get") get

> Gets the specified draft.


```ruby
def get(id, 
            user_id, 
            alt = 'json', 
            fields = nil, 
            format = 'full', 
            key = nil, 
            oauth_token = nil, 
            pretty_print = true, 
            quota_user = nil, 
            user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | The ID of the draft to retrieve. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| format |  ``` Optional ```  ``` DefaultValue ```  | The format to return the draft in. (Acceptable values are: "full", "metadata", "minimal", "raw") |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
format = 'full'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = drafts.get(id, user_id, alt, fields, format, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="delete"></a>![Method: ](http://apidocs.io/img/method.png ".DraftsController.delete") delete

> Immediately and permanently deletes the specified draft. Does not simply trash it.


```ruby
def delete(id, 
               user_id, 
               alt = 'json', 
               fields = nil, 
               key = nil, 
               oauth_token = nil, 
               pretty_print = true, 
               quota_user = nil, 
               user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| id |  ``` Required ```  | The ID of the draft to delete. |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
id = 'id'
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

drafts.delete(id, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


#### <a name="create"></a>![Method: ](http://apidocs.io/img/method.png ".DraftsController.create") create

> Creates a new draft with the DRAFT label.


```ruby
def create(body, 
               user_id, 
               alt = 'json', 
               fields = nil, 
               key = nil, 
               oauth_token = nil, 
               pretty_print = true, 
               quota_user = nil, 
               user_ip = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| body |  ``` Required ```  | TODO: Add a parameter description |
| user_id |  ``` Required ```  ``` DefaultValue ```  | The user's email address. The special value me can be used to indicate the authenticated user. |
| alt |  ``` Optional ```  ``` DefaultValue ```  | Data format for the response. (Acceptable values are: "json") |
| fields |  ``` Optional ```  | Selector specifying which fields to include in a partial response. |
| key |  ``` Optional ```  | API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token. |
| oauth_token |  ``` Optional ```  | OAuth 2.0 token for the current user. |
| pretty_print |  ``` Optional ```  ``` DefaultValue ```  | Returns response with indentations and line breaks. |
| quota_user |  ``` Optional ```  | Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided. |
| user_ip |  ``` Optional ```  | IP address of the site where the request originates. Use this if you want to enforce per-user limits. |


#### Example Usage

```ruby
body = Draft.new
user_id = 'me'
alt = 'json'
fields = 'fields'
key = 'key'
oauth_token = 'oauth_token'
pretty_print = true
quota_user = 'quotaUser'
user_ip = 'userIp'

result = drafts.create(body, user_id, alt, fields, key, oauth_token, pretty_print, quota_user, user_ip)

```


[Back to List of Controllers](#list_of_controllers)



