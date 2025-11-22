<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Mini Netflix</title>

<style>
    body {
        margin: 0;
        background: #141414;
        font-family: Arial, Helvetica, sans-serif;
        color: white;
    }

    /* NAVBAR */
    .navbar {
        display: flex;
        align-items: center;
        padding: 20px;
        position: fixed;
        top: 0;
        width: 100%;
        background: rgba(0,0,0,0.8);
        z-index: 10;
    }
    .logo {
        font-size: 30px;
        font-weight: bold;
        color: #e50914;
        margin-right: 40px;
    }
    .nav-links a {
        margin-right: 20px;
        text-decoration: none;
        color: #ddd;
        font-size: 14px;
    }
    .nav-links a:hover {
        color: white;
    }

    /* HERO SECTION */
    .hero {
        height: 70vh;
        background-image: url('https://picsum.photos/1600/900?blur=2');
        background-size: cover;
        background-position: center;
        display: flex;
        flex-direction: column;
        justify-content: flex-end;
        padding: 40px;
        margin-top: 60px;
    }
    .hero h1 {
        font-size: 60px;
        margin: 0;
        color: red;
    }
    .hero p {
        max-width: 400px;
        color: #ccc;
        margin: 10px 0 20px;
    }
    .hero button {
        background: #e50914;
        padding: 12px 25px;
        border: none;
        font-size: 16px;
        cursor: pointer;
    }
    .hero button:hover {
        background: #b20710;
    }

    /* MOVIE ROWS */
    .row {
        margin: 30px 20px;
    }
    .row h2 {
        margin-left: 10px;
    }

    .movie-container {
        display: flex;
        overflow-x: auto;
        padding: 10px;
    }
    .movie {
        width: 200px;
        margin-right: 10px;
        transition: transform 0.2s;
        cursor: pointer;
        border-radius: 4px;
        overflow: hidden;
    }
    .movie img {
        width: 100%;
        height: 120px;
        object-fit: cover;
    }
    .movie:hover {
        transform: scale(1.1);
    }

    /* MODAL POPUP */
    #modal {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background: rgba(0,0,0,0.9);
        justify-content: center;
        align-items: center;
        z-index: 1000;
    }
    #modal img {
        max-width: 80%;
        border-radius: 10px;
    }
    #closeModal {
        position: absolute;
        top: 30px;
        right: 40px;
        font-size: 40px;
        cursor: pointer;
        color: white;
    }
</style>
</head>

<body>

<!-- NAVBAR -->
<div class="navbar">
    <div class="logo">MiniFlix</div>
    <div class="nav-links">
        <a href="#">Home</a>
        <a href="#">TV Shows</a>
        <a href="#">Movies</a>
        <a href="#">Telugu</a>
        <a href="#">Hindi</a>
        <a href="#">English</a>
        <a href="#">OG</a>
    </div>
</div>

<!-- HERO -->
<div class="hero">
    <h1>BlockBuster Movie</h1>
    <p>Watch the latest blockbuster hit, now streaming exclusively.</p>
    <button>Play</button>
</div>

<!-- HERO SECTIONS FOR STARS -->
<div class="row">
    <h2>Prabhas</h2>
    <div class="movie-container">
        <div class="movie" onclick="openModal('https://upload.wikimedia.org/wikipedia/commons/3/3e/Prabhas_at_Baahubali2_event.jpg')">
            <img src="https://upload.wikimedia.org/wikipedia/commons/3/3e/Prabhas_at_Baahubali2_event.jpg">
        </div>
    </div>
</div>

<div class="row">
    <h2>Balayya</h2>
    <div class="movie-container">
        <div class="movie" onclick="openModal('https://upload.wikimedia.org/wikipedia/commons/8/8f/Nandamuri_Balakrishna_at_Gautamiputra_Satakarni_Event.jpg')">
            <img src="https://upload.wikimedia.org/wikipedia/commons/8/8f/Nandamuri_Balakrishna_at_Gautamiputra_Satakarni_Event.jpg">
        </div>
    </div>
</div>

<div class="row">
    <h2>Mahesh Babu</h2>
    <div class="movie-container">
        <div class="movie" onclick="openModal('https://upload.wikimedia.org/wikipedia/commons/1/14/Mahesh_Babu_in_Spyder_audio_launch.jpg')">
            <img src="https://upload.wikimedia.org/wikipedia/commons/1/14/Mahesh_Babu_in_Spyder_audio_launch.jpg">
        </div>
    </div>
</div>

<div class="row">
    <h2>Pawan Kalyan</h2>
    <div class="movie-container">
        <div class="movie" onclick="openModal('https://upload.wikimedia.org/wikipedia/commons/1/14/Pawan_Kalyan_at_Bheemla_Nayak_Event.jpg')">
            <img src="https://upload.wikimedia.org/wikipedia/commons/1/14/Pawan_Kalyan_at_Bheemla_Nayak_Event.jpg">
        </div>
    </div>
</div>

<!-- MODAL -->
<div id="modal">
    <span id="closeModal" onclick="closeModal()">&times;</span>
    <img id="modalImg" src="">
</div>

<script>
function openModal(src) {
    document.getElementById("modal").style.display = "flex";
    document.getElementById("modalImg").src = src;
}

function closeModal() {
    document.getElementById("modal").style.display = "none";
}
</script>

</body>
</html>
