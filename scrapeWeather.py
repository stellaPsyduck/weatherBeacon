import subprocess


# Hard-Coded Conditions
URL = "https://www.theweathernetwork.com/en/city/ca/ontario/toronto/current"
current_weather = 37  # Line number in the lynx output where current weather is found

# Scrape the current weather
try:
    text = subprocess.check_output( #since the Pi is a tiny girly, we use lynx (text-based web browser) to scrape the data
        ["lynx", "-dump", "-nolist", URL],
        text=True
    )

    lines = text.splitlines() #saves the output text as referencable lines

except subprocess.CalledProcessError as e:
    print("Lynx failed:", e)

curr_weather = lines[current_weather].strip()
# print(curr_weather) 

# Choose a script to constantly run until next check


