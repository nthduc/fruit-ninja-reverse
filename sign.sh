#!/bin/bash
apksigner sign --ks ~/.android/debug.keystore --min-sdk-version 30 -v --v2-signing-enabled true --ks-key-alias androiddebugkey --ks-pass pass:android $@
