from flask import Flask, render_template, request, redirect, url_for

app = Flask(__name__)

bookings = []


@app.route("/")
def home():
    return render_template("index.html", bookings=bookings)


@app.route("/book", methods=["POST"])
def book_table():
    booking = {
        "name": request.form["name"],
        "phone": request.form["phone"],
        "date": request.form["date"],
        "time": request.form["time"],
        "guests": request.form["guests"]
    }

    bookings.append(booking)

    return redirect(url_for("home"))


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
