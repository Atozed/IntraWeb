This project group contains 2 projets:

1) The PaymentApp: this is a simple but complete web application showing how to call remote server (the payment server) and expect an *asyncronous* response.

The payment process is like this:

- The user informs the value of the payment and clicks on a button
- The PaymentApp sends a POST request to the payment server with all the data that needs to be transfered to make the payment. 
- At that stage, the payment server does not respond immediately. It just acknowleges that a payment *request* has been received
- Later, when the payment is processed, the Payment Server will callback the PaymentApp using a pre-determined URL (or the webhook) informing the status of the payment (success or failure)
- The PaymentApp will then display to the user the status of the payment. This is done via the IWMonitor component with is specifically designed for that. 

2) The PaymentServer: this is a simple application built with a Indy HTTP Server that acts like a payment server. It receives a JSON request from the client (the PaymentApp) 
and processes it asyncronously. When the processment is complete, it will callback the caller, sending a new JSON request with the status of the payment.

This test server can be changed to simulate a real server that you may have to use. You just need to change the request and reponse formats according to the real server protocol.

Enjoy!