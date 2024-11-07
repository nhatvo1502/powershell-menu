# Function to display the menu
function Show-Menu {
    Clear-Host
    Write-Host "===================="
    Write-Host "    Main Menu"
    Write-Host "===================="
    Write-Host "1. Option 1"
    Write-Host "2. Option 2"
    Write-Host "3. Option 3"
    Write-Host "4. Exit"
}

# Function to handle menu choices
function Read-Choice {
    param (
        [string]$prompt = 'Please enter your choice: '
    )
    $choice = Read-Host $prompt
    return $choice
}

# Function to execute actions based on user's choice
function Execute-Choice {
    param (
        [string]$choice
    )
    switch ($choice) {
        '1' {
            Write-Host "You selected Option 1"
            # Add your Option 1 code here
        }
        '2' {
            Write-Host "You selected Option 2"
            # Add your Option 2 code here
        }
        '3' {
            Write-Host "You selected Option 3"
            # Add your Option 3 code here
        }
        '4' {
            Write-Host "Exiting..."
            exit
        }
        default {
            Write-Host "Invalid choice, please select a valid option."
        }
    }
}

# Main loop to display the menu and get user's choice
do {
    Show-Menu
    $choice = Read-Choice
    Execute-Choice -choice $choice
    Start-Sleep -Seconds 2
} while ($true)
