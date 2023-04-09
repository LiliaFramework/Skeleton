GM = GM or GAMEMODE
print("MYSQL DATABASE IS OFFLINE! WE RECOMMEND TO ENABLE IT IF YOU ARE USING LILIA!")
--[[
function GM:SetupDatabase()
    -- Which method of storage: sqlite, tmysql4, mysqloo
    nut.db.module = "mysqloo"
    -- The hostname for the MySQL server.
    nut.db.hostname = ""
    -- The username to login to the database.
    nut.db.username = ""
    -- The password that is associated with the username.
    nut.db.password = ""
    -- The database that the user should login to.
    nut.db.database = ""
    -- The port for the database, you shouldn't need to change this.
    nut.db.port = 3306
end
]]