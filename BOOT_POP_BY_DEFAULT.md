# Fix: HP Omen 16 (Core Ultra 9) Persistent Dual-Boot
Method: The "EFI Mirror" Strategy
Logic: On newer HP Omen 16 firmware, the BIOS will often only "respect" a drive in the boot order if it contains a valid EFI/Microsoft path. By mirroring that folder to the secondary drive, the BIOS recognizes it as a bootable "Windows" device, allowing you to prioritize the Pop!_OS drive without the BIOS "self-healing" back to the original Windows SSD.
1. Mirroring the Boot Structure
Instead of modifying the Windows drive, we simply provided the BIOS with the folder structure it expects to see on the Pop!_OS drive.

    Identified Windows EFI: nvme1n1p1
    Action: Mounted the Windows EFI partition and copied the entire Microsoft folder over to the Pop!_OS EFI partition.
    Result: The BIOS now recognizes the Pop!_OS drive as a valid "Windows Boot Manager" option, preventing it from being skipped or pushed down in priority.

2. Enabling the Selection Menu
Since Pop!_OS uses systemd-boot, it automatically detects the newly copied Windows files on its own partition. The only requirement was to make the menu visible.

    Action: Modified /boot/efi/loader/loader.conf.
    Change: Added/Updated the timeout value to 5.
    Result: On startup, the systemd-boot menu now stays on screen for 5 seconds, offering the choice between Pop!_OS and the mirrored Windows entry.

3. BIOS Prioritization
With the "Windows" structure present on both drives:

    Entered BIOS (F10) > OS Boot Manager.
    Identified the two Windows Boot Manager entries (one for each SSD).
    Moved the entry for the Pop!_OS SSD to the top.
    Outcome: The BIOS now consistently hits the Pop!_OS drive first, which launches the systemd-boot menu.

Key Benefits

    Non-Destructive: No files were renamed or overwritten; we only added a copy of the boot metadata.
    Independent: If either drive is removed, the other remains fully bootable without further repair.
    Update-Proof: Windows updates on the primary drive won't interfere with the mirrored files on the secondary drive.
