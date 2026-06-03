const express = require("express");
const fs = require("fs");
const path = require("path");

const router = express.Router();

const movies = [
  {
    id: 1,
    title: "Avengers Endgame",
    showTime: "10:00 AM"
  },
  {
    id: 2,
    title: "Batman",
    showTime: "01:00 PM"
  },
  {
    id: 3,
    title: "Interstellar",
    showTime: "04:00 PM"
  },
  {
    id: 4,
    title: "Joker",
    showTime: "07:00 PM"
  }
];

const bookingFile = path.join(
  __dirname,
  "../data/bookings.json"
);

function getBookings() {
  try {
    const data = fs.readFileSync(bookingFile);
    return JSON.parse(data);
  } catch (error) {
    return [];
  }
}

function saveBookings(bookings) {
  fs.writeFileSync(
    bookingFile,
    JSON.stringify(bookings, null, 2)
  );
}

router.get("/", (req, res) => {
  res.render("index", {
    movies,
    bookings: getBookings()
  });
});

router.post("/book", (req, res) => {

  const { customerName, movieId, seats } = req.body;

  const selectedMovie = movies.find(
    movie => movie.id == movieId
  );

  const bookings = getBookings();

  bookings.push({
    bookingId: Date.now(),
    customerName,
    movie: selectedMovie.title,
    showTime: selectedMovie.showTime,
    seats,
    bookedAt: new Date().toLocaleString()
  });

  saveBookings(bookings);

  res.redirect("/");
});

module.exports = router;
