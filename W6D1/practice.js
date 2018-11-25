document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById("mycanvas");
    canvas.height = 500;
    canvas.width = 500;

    const ctx = canvas.getContext('2d');
    ctx.fillStyle = 'lightblue';
    ctx.fillRect(20, 10, 550, 300);

    ctx.beginPath();
    ctx.arc(100, 75, 50, 0, 2 * Math.PI, true);
    ctx.strokeStyle = 'white';
    ctx.lineWidth = 4;
    ctx.stroke();
    ctx.fillStyle = 'pink';
    ctx.fill();
});
