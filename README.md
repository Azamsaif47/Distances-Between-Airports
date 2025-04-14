# ✈️ Airport Distance API

A .NET 5.0 backend API that returns the distance between two airports in **kilometers** as a JSON response. The API is documented with **Swagger** for easy testing and exploration.

---

## 🚀 Features

- Retrieve a list of airports
- Fetch details of an airport by IATA code
- Calculate the distance between two airports
- Fully documented with Swagger UI

---

## 🛠️ Installation

1. **Clone the repository:**

   ```bash
   git clone https://github.com/Azamsaif47/Distances-Between-Airports.git
   ```

2. **Navigate to the project directory:**

   ```bash
   cd Distances-Between-Airports
   ```

3. **Run with Docker Compose:**

   ```bash
   docker-compose up
   ```

---

## 📡 Usage

1. Ensure the project is running.
2. Open your browser and go to:  
   [http://localhost:5000/swagger](http://localhost:5000/swagger)
3. Test the available API endpoints:
   - `GET /airports` – List all airports
   - `GET /airport/{iataCode}` – Get details for a specific airport
   - `GET /distance/from={from}&to={to}` – Calculate distance between two airports
4. Use the **"Try it out"** button on Swagger to interact with each endpoint.
5. Input 3-letter **IATA codes** (e.g., `JFK`, `LAX`) as parameters.
6. Click **Execute** to get the distance result in the **Response Body**.