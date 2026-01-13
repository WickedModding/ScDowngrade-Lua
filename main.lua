-- Sc Downgrade By Daniil Sivi
-- WARNING! Else you Linux User, install wine this command: Ubuntu: sudo apt install wine, Arch: sudo pacman -S wine
-- Tool by W1ckedOneshot and Wic1k
-- locals
local sc_name, sc_fixed_name, select_os, os_variable, sc_version, lang, sc_versions_list
local lang = {
 writescfile = "Write Your Sc Name:",
 writefixedscfile = "Write Fixed Sc Name:",
 select_string = "Your Select:" }
 local sc_versions_list = {
     ['0.5'] = true,
     ['1.0'] = true,
     ['2.0'] = true
}
-- writing
io.write(lang['writescfile'] .. "") local sc_name = io.read()
io.write(lang['writefixedscfile'] .. "") local sc_fixed_name = io.read()
print("Select Sc Version:", '\n', "2.0 - New Versions v58 And Highest", '\n', "1.0 - v29, idk", '\n', "0.5 - Oldest Versions")
io.write(lang['select_string'] .. "") local sc_version = io.read()
print("Select your os:",'\n',"1. Windows",'\n',"2. Linux")
io.write(lang['select_string'] .. " ") local select_os = io.read()

-- conditions
if select_os == "1" then
os.execute("ScDowngrade.exe " .. sc_name .. " " .. sc_fixed_name .. " " .. sc_version)
elseif select_os == "2" then
os.execute("wine ScDowngrade.exe " .. sc_name .. " " .. sc_fixed_name .. " " .. sc_version)
else
print("Error Number")
end
if not sc_version == sc_versions_list then
	print("Version Error")
end
