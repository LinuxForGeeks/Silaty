# -*- mode: python ; coding: utf-8 -*-


block_cipher = None


a = Analysis(
    ['silaty-indicator.py'],
    pathex=[],
    binaries=[],
    datas=[('gi_typelibs/freetype2-2.0.typelib', 'gi_typelibs'), ('lang/*', 'lang'), ('data/*', 'data'), ('audio/Fajr/*', 'audio/Fajr'), ('audio/Normal/*', 'audio/Normal'), ('icons/arrows/*', 'icons/arrows'), ('icons/sidebar/*', 'icons/sidebar'), ('icons/hicolor/24x24/apps/*', 'icons/hicolor/24x24/apps'), ('icons/hicolor/48x48/apps/*', 'icons/hicolor/48x48/apps'), ('icons/hicolor/128x128/apps/*', 'icons/hicolor/128x128/apps'), ('icons/hicolor/scalable/*', 'icons/hicolor/scalable'), ('silaty.png', '.'), ('silaty-indicator.png', '.')],
    hiddenimports=[],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    win_no_prefer_redirects=False,
    win_private_assemblies=False,
    cipher=block_cipher,
    noarchive=False,
)
pyz = PYZ(a.pure, a.zipped_data, cipher=block_cipher)

exe = EXE(
    pyz,
    a.scripts,
    [],
    exclude_binaries=True,
    name='silaty-indicator',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    console=False,
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
)
coll = COLLECT(
    exe,
    a.binaries,
    a.zipfiles,
    a.datas,
    strip=False,
    upx=True,
    upx_exclude=[],
    name='silaty-indicator',
)
