Install Docker.io
sudo apt install docker.io

ทำการติดตั้ง go lang เวอร์ชั่น 18.1
ทำการสร้าง Dockerfile สำหรับรัน go lang
สร้างไฟล์ main.go เพื่อทำการเชื่อมต่อหน้า html ต่างๆ ผ่าน directory html
ทำการ build Dockerfile
sudo docker build -t dpu_ct519_lab5
sudo docker run -d -p 8080:8080 dpu_ct519_lab5
sudo docker ps -a เพื่อเช็ค Service
ทำการเข้าผ่าน Webbrowser