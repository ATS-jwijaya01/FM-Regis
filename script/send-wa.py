import mysql.connector
import pywhatkit
from datetime import datetime
import time

# Connect to database
db = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="j13n3w98",
    database="fm_regis"
)

cursor = db.cursor(dictionary=True)
cursor.execute("SELECT * FROM penonton")
penonton_list = cursor.fetchall()

now = datetime.now()
hour = now.hour
minute = now.minute + 1 # Add 1 minute to avoid sending at current minute

for penonton in penonton_list:
    print(penonton)
    phone_number = "+{}".format(penonton['nohp_penonton']) if not str(penonton['nohp_penonton']).startswith("+") else str(penonton['nohp_penonton'])
    pesan = (
        f"*[NO. TIKET: {penonton['kode_penonton']}]*\n\n"
        "Selamat malam, Bapak/Ibu/Sdr. Terima kasih sudah mendaftar untuk hadir dalam *FORCE Musical 2026: For Such A Time as This* pada:\n\n"
        "📅 *Sabtu besok, 28 Februari 2026*\n"
        "📍 *Ruang KU GKY Puri Indah*\n"
        "⏰ *Registrasi ulang: 13.30*, open gate: 14.00\n\n"
        "Mohon untuk memperhatikan beberapa hal berikut.\n"
        "- *Datang 30 menit* sebelum open gate untuk registrasi ulang dan menghindari antrean.\n"
        "- *Sistem duduk free seating*, penonton yang lebih dulu datang mendapat pilihan lebih bebas.\n"
        "- *Pintu akan ditutup pada 14.00*.\n\n"
        "Sampai ketemu dan mari sama-sama menikmati FORCE Musical! ✨\n"
        "God bless! 🤗"
    )
    # pywhatkit requires some delay between messages as whatsapp web must load
    pywhatkit.sendwhatmsg_instantly(phone_number, pesan)
    time.sleep(5)  # Give some delay between messages to avoid spam/overlapping actions

cursor.close()
db.close()
