# hx-googlecast-externs
#### Haxe/JavaScript externs for Google Cast Receiver, Sender, Game SDK.

<img src="https://cloud.githubusercontent.com/assets/576184/9329463/0559a0fe-45b2-11e5-8724-3a606419ecbf.png" width=100 />
<img src="https://cloud.githubusercontent.com/assets/576184/9329443/e3475fec-45b1-11e5-870f-e6f1e1393f27.png"  width=300 />

_Targeted at Cast version v1_

---

# Setup _Chrome Sender_ application

> **Tip:** Make sure you read this first https://developers.google.com/cast/docs/chrome_sender

#### Include the _cast_sender.js_ `<script>` tag
Add the script tag to your HTML page
```html
<script type="text/javascript" src="https://www.gstatic.com/cv/js/sender/v1/cast_sender.js"></script> 
```

#### Initialization
Instead of using `window['__onGCastApiAvailable'] = callback` you can use `ChromeCast.boot(callback)`.

To determine if the API is available and initialize it, you can provide the callback function before the Cast API loads. It is invoked with `loaded == true` when the API loads, or with `errorInfo` when load fails (e.g. when no extension is discovered).

```haxe
ChromeCast.boot(function(loaded:Bool, errorInfo:String):Void
{
  trace("Init cast version : " + ChromeCast.VERSION);
  if (loaded)
});
```
#### Requesting session
You initialize the API as follows:
```haxe
var sessionRequest = new SessionRequest(appId);
var apiConfig = new ApiConfig(sessionRequest, sessionListener, receiverListener);
ChromeCast.initialize(apiConfig, onInitSuccess, onError);
```
From this point you are good to go and follow the docs.

---

# Setup _Custom Receiver_ application

> **Tip** Make sure you read this first: https://developers.google.com/cast/docs/custom_receiver

#### Include the _cast_receiver.js_ `<script>` tag

```html
<script src="//www.gstatic.com/cast/sdk/libs/receiver/1.0.0/cast_receiver.js"></script>
```
#### Initialization

```haxe
var castReceiver = CastReceiverManager.getInstance();
castReceiver.start();
```
From this point you are good to go and follow the docs.

---

# Setup _Game Manager API_

> **Tip** Make sure you read this first: https://developers.google.com/cast/docs/gaming

Follow this order of initialization:

 1. Instantiate GameManager
 2. Start Custom Receiver

```haxe
var config = new GameManagerConfig();
config.maxPlayers = 5;
config.applicationName = "Haxe ChromeCast Application";

var gameManager = new GameManager(config);
gameManager.addEventListener(EventType.GAME_MESSAGE_RECEIVED, onGameMessage);

#if debug
// nice simple UI for debugging Cast Receiver.
var debugUI = new DebugUI(gameManager);
debugUI.open();
#end

var castReceiver = CastReceiverManager.getInstance();
castReceiver.start();
```
From this point you are good to go and follow the docs.

---

# Implementation notes

* **Package name** The package of the Haxe externs are prefixed with `chromecast` instead of `cast`. This is to avoid conflicts with the `cast`-keyword in Haxe. As you can [see](https://github.com/markknol/hx-googlecast-externs/blob/master/googlecast/Receiver.hx#L10) in the extern classes, the `@:native` keyword rewrites this package to the expected package.

# Updates
 * I'm not sure if I will maintain the extern classes. It it provides as is. Feel free to do a pull-request.

# Credits
 * Part of the type definitions are created by Mark Knol. I'm not associated with Google. It could be the case stuff is missing, incomplete or even incorrect. I manually collected the Haxe extern classes and copy/pasted the documentation at it.
 * Part of the definitions are created by renaudbardet, see https://github.com/renaudbardet/google-cast-receiver-hx-headers I've put it together for convinience.

This software is distributed under the MIT licence which extends only to the headers themselves, the actual software they give access to are the property of Google and may be subject to a different license.

# Learn more
 * https://developers.google.com/cast/
 * http://haxe.org
