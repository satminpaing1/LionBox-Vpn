#!/bin/bash

set -e

DIR=app/src/main/assets/sing-box
rm -rf $DIR
mkdir -p $DIR
cd $DIR

# API ကို လှမ်းမမေးတော့ဘဲ Version နံပါတ်ကို အောက်မှာ တိုက်ရိုက် ရိုက်ထည့်လိုက်ပါပြီ
# ----------------------------------------------------------------------

#### GEOIP
VERSION_GEOIP="202409120056" # Fixed version
echo VERSION_GEOIP=$VERSION_GEOIP
echo -n $VERSION_GEOIP > geoip.version.txt
curl -fLSsO https://github.com/SagerNet/sing-geoip/releases/download/$VERSION_GEOIP/geoip.db
xz -9 geoip.db

#### GEOSITE
VERSION_GEOSITE="202409120057" # Fixed version
echo VERSION_GEOSITE=$VERSION_GEOSITE
echo -n $VERSION_GEOSITE > geosite.version.txt
curl -fLSsO https://github.com/SagerNet/sing-geosite/releases/download/$VERSION_GEOSITE/geosite.db
xz -9 geosite.db
