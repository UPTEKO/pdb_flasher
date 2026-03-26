# pdb_flasher

## Installation Steps

1. Install Ubuntu with user: `uct` and password: `mordor`

2. Install openocd
   ```bash
   sudo apt update
   sudo apt install openocd
   ```

3. Copy the `detatch_arm_no_interrupt.elf` and `flash_pdb.sh` to Desktop

4. Copy `flash_pdb.service` to `/etc/systemd/system`

5. Reload systemd daemon
   ```bash
   sudo systemctl daemon-reload
   ```

6. Enable the flash_pdb service
   ```bash
   sudo systemctl enable flash_pdb.service
   ```

7. Start the flash_pdb service
   ```bash
   sudo systemctl start flash_pdb.service
   ```
