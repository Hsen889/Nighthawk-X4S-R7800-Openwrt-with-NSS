#!/bin/bash

# Description: OpenWrt DIY script run after Update feeds

cp -rf feeds/leanpack/* feeds/packages/
rm -rf feeds/leanpack
./scripts/feeds update -a

# 移除feed里重复组件

# rm -rf feeds/packages/net/kcptun
# rm -rf feeds/kenzok8/redsocks2

# sed -i '/endef/a\TARGET_LDFLAGS+=-L$(STAGING_DIR)\/usr\/lib -L$(STAGING_DIR)\/lib' ./feeds/packages/lang/python/python3/files/python3-package-ctypes.mk
