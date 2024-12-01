# Mute the system volume
Add-Type -TypeDefinition @"
using System.Runtime.InteropServices;

public class Audio {
    [DllImport("user32.dll")]
    public static extern int SendMessageW(int hWnd, int Msg, int wParam, int lParam);

    public const int HWND_BROADCAST = 0xffff;
    public const int WM_APPCOMMAND = 0x319;
    public const int APPCOMMAND_VOLUME_MUTE = 0x80000;

    public static void Mute() {
        SendMessageW(HWND_BROADCAST, WM_APPCOMMAND, 0, APPCOMMAND_VOLUME_MUTE);
    }
}
"@

[Audio]::Mute()
