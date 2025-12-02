from flask import Flask, request
from twilio.twiml.messaging_response import MessagingResponse

app = Flask(__name__)

@app.route("/whatsapp", methods=["POST"])
def whatsapp():
    print("🔥 MESSAGE RECEIVED:", request.form)  # Debug line
    incoming = request.form.get("Body", "")
    
    resp = MessagingResponse()
    msg = resp.message()

    msg.body(f"Bot connected! You sent: {incoming}")

    return str(resp)

if __name__ == "__main__":
    print("🔥 TEST MODE ACTIVE – Flask Running Correct main.py")
    app.run(debug=True)
