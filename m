Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 06319A05DF5
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  8 Jan 2025 15:04:54 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id CF9F38426A
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed,  8 Jan 2025 15:04:53 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1736345093;
 b=SshxOw0sjCDwdXObvuczXJzmBRt1xgRp/cXbw0jX1BClqitjLnqVWsQ7faPQwOhd/hnI0
 nPPdMbpWWoEcYVqO6JpHvOu98OlIwXLS4VI848CoL+fJsI27yvedwv4CdScpjwONolzOecC
 JC82PZ0uWTfI6wzv6MWBEj54AsZG51o=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1736345093; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=hbR00InUK9vzsBkPSM4757F02WjGjzlUbnw/KChjuQo=;
 b=hr+LuOr1fcQ+uJAR63iMNx52+klFy1KAWLBEVFuo9dpsDJoYLKwK0g596WKPGG3bwbsvx
 BJWE3Xa3pLuqgWEeLhkOMjPlW715UzVFpTFmZXmN6HeCc1loKnXMXYAVabG/yVjOBhL74Ro
 ysiLNSgiYhx1AsesRBMMSBBsUv6tfUY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 898B78207F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Wed,  8 Jan 2025 15:04:16 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1736345056;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=hbR00InUK9vzsBkPSM4757F02WjGjzlUbnw/KChjuQo=;
	b=T85IZMlmAk18dpWPTm3/4qGvuuVeOgyuCSQ4j6ymj0ZH3AeLvqnTVS8Icz7orSKnUeG9B7
	ONOYeCPx4V1qy9oG3zoYjqLR1fdr6H0BNANJgxbrzWiyvJ285cH2IQibFH0l7X9mAN4mHS
	gfExx8CIbUYP2WAo8JjK4dCTHMGaewk=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=gRqgHMCY;
	dmarc=pass (policy=none) header.from=narfation.org;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1736345056; a=rsa-sha256;
	cv=none;
	b=lEieW7U3itkjbNaBuzqL0+PMJRuytqFjsUnJypHuBv0/6zSIwJ1rtDBwNIBjc9Ncik30yi
	6+t8FA0ns5FZkfhjn/kyC3grp4CR+hnAGf/kHhoUQazg3Ii+xi9XGQtnpdi2HiIL7hJ4bn
	ucbXlsiFm5tlQ9d4FCBXJIY9IBSTxTg=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1736345055;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=hbR00InUK9vzsBkPSM4757F02WjGjzlUbnw/KChjuQo=;
	b=gRqgHMCYkQUgWlyu613o1StDAeYGzxKC94+o6IVtokpfUfWQI3xqluhUpXekmJ/F7ovEiR
	Fn/l8bTu1du4ollJ456vDnGkA1PhLthSikluvMmeY31c0Y8jnCrdsXMSYmBrSI5yoQWAPG
	hYBVylp8yiDnqwlWLSwLzlw69Mn6WRs=
From: Sven Eckelmann <sven@narfation.org>
Date: Wed, 08 Jan 2025 15:04:12 +0100
Subject: [PATCH v3] batman-adv: Use mailmap to fix old e-mail addresses
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250108-mailmap-v3-1-fe4a7a7e2700@narfation.org>
X-B4-Tracking: v=1; b=H4sIANuFfmcC/2WOywqDMBBFf0Wybkomvl31P4qL0SQaqEYmElrEf
 28U2o3M6sDcc+/GvCarPWuSjZEO1ls3R0hvCetHnAfNrYrMpJC5AFHyCe1rwoWrAhBML1VXCRa
 /F9LGvk/Ts41syE18HUnjL5+BTOGfD8DjZXUGILqi1uVjRjK4xv67o+FQjtavjj7ntiAP8XVGk
 IdGqipXKLrqomn3ff8CWvt6e+UAAAA=
X-Change-ID: 20250107-mailmap-d61a1fc2db80
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5734; i=sven@narfation.org;
 h=from:subject:message-id; bh=vnD/CZ8/5fqsEge1KYhhGppilfplx3eXHnJ3Ei1dwi4=;
 b=owGbwMvMwCXmy1+ufVnk62nG02pJDOl1rXdSDjPYTNsef/PPQ6YHob+YjXwf3ZRLX3eAJ1heT
 nPWhrlTO0pZGMS4GGTFFFn2XMk/v5n9rfznaR+PwsxhZQIZwsDFKQATUXzHyND+s3iWb3B/qYbF
 Y529BeIzDktlTgl7bb5tVVbLwuKH5/Yy/GYp4sifZHT7ntLrtp9l/znYztp5dykYBkQduS3uIu9
 5mg8A
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: KYORVWZIA7P2HGNZAQT436FKNRNAJ4AH
X-Message-ID-Hash: KYORVWZIA7P2HGNZAQT436FKNRNAJ4AH
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency;
 loop; banned-address; member-moderation;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.8
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/KYORVWZIA7P2HGNZAQT436FKNRNAJ4AH/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The .mailmap is used by git-(short)log to fix some botchered names and to
map contributions from old e-mail addresses to new ones. It is also used by
some tools to get the correct e-mail address for reviewers based on old
contributions.

The list was generated using old e-mail address changes in the source code.
Also relevant entries for other contributors from the v6.13-rc5 release
were added.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
Changes in v3:
- Drop duplicated mail mapping for linus.luessing@web.de
- Link to v2: https://lore.kernel.org/r/20250107-mailmap-v2-1-12d85da0b8e7@narfation.org
Changes in v2:
- Switched to Antonio's preferred e-mail address
- Link to v1: https://lore.kernel.org/r/20241231-mailmap-v1-1-1494110b69e7@narfation.org
---
 .mailmap | 74 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 74 insertions(+)

diff --git a/.mailmap b/.mailmap
new file mode 100644
index 0000000000000000000000000000000000000000..97888b9b34d21bf0b641051c8e256a88394348f4
--- /dev/null
+++ b/.mailmap
@@ -0,0 +1,74 @@
+#
+# This list is used by git-shortlog to fix a few botched name translations
+# in the git archive, either because the author's full name was messed up
+# and/or not always written the same way, making contributions from the
+# same person appearing not to be so or badly displayed. Also allows for
+# old email addresses to map to new email addresses.
+#
+# For format details, see "man gitmailmap" or "MAPPING AUTHORS" in
+# "man git-shortlog" on older systems.
+#
+# Please keep this list dictionary sorted.
+#
+Andreas Langer <an.langer@gmx.de> <a.langer@q-dsl.de>
+Andreas Langer <an.langer@gmx.de> <an.langer at gmx.de>
+Andrew Lunn <andrew@lunn.ch> <andrew.lunn@ascom.ch>
+Antonio Quartulli <antonio@mandelbit.com> <antonio@meshcoding.com>
+Antonio Quartulli <antonio@mandelbit.com> <antonio@open-mesh.com>
+Antonio Quartulli <antonio@mandelbit.com> <antonio.quartulli@open-mesh.com>
+Antonio Quartulli <antonio@mandelbit.com> <ordex@autistici.org>
+Antonio Quartulli <antonio@mandelbit.com> <ordex@ritirata.org>
+Antonio Quartulli <antonio@mandelbit.com> <antonio@openvpn.net>
+Antonio Quartulli <antonio@mandelbit.com> <a@unstable.cc>
+Colin Ian King <colin.i.king@gmail.com> <colin.king@canonical.com>
+Dan Carpenter <error27@gmail.com> <dan.carpenter@oracle.com>
+Geliang Tang <geliang@kernel.org> <geliang.tang@linux.dev>
+Geliang Tang <geliang@kernel.org> <geliang.tang@suse.com>
+Geliang Tang <geliang@kernel.org> <geliangtang@xiaomi.com>
+Geliang Tang <geliang@kernel.org> <geliangtang@gmail.com>
+Geliang Tang <geliang@kernel.org> <geliangtang@163.com>
+Geliang Tang <geliang@kernel.org> <tanggeliang@kylinos.cn>
+Jiri Pirko <jiri@resnulli.us> <jiri@nvidia.com>
+Jiri Pirko <jiri@resnulli.us> <jiri@mellanox.com>
+Jiri Pirko <jiri@resnulli.us> <jpirko@redhat.com>
+Kees Cook <kees@kernel.org> <kees.cook@canonical.com>
+Kees Cook <kees@kernel.org> <keescook@chromium.org>
+Kees Cook <kees@kernel.org> <keescook@google.com>
+Kees Cook <kees@kernel.org> <kees@outflux.net>
+Kees Cook <kees@kernel.org> <kees@ubuntu.com>
+Leon Romanovsky <leon@kernel.org> <leon@leon.nu>
+Leon Romanovsky <leon@kernel.org> <leonro@mellanox.com>
+Leon Romanovsky <leon@kernel.org> <leonro@nvidia.com>
+Linus Lüssing <linus.luessing@c0d3.blue> <linus.luessing@acsom.ch>
+Linus Lüssing <linus.luessing@c0d3.blue> <linus.luessing@ascom.ch>
+Linus Lüssing <linus.luessing@c0d3.blue> <linus.luessing@web.de>
+Linus Lüssing <linus.luessing@c0d3.blue> <ll@simonwunderlich.de>
+Marek Lindner <marek.lindner@mailbox.org> <lindner_marek@yahoo.de>
+Marek Lindner <marek.lindner@mailbox.org> <mareklindner@neomailbox.ch>
+Markus Schneider-Pargmann <msp@baylibre.com> <mpa@pengutronix.de>
+Nikolay Aleksandrov <razor@blackwall.org> <naleksan@redhat.com>
+Nikolay Aleksandrov <razor@blackwall.org> <nikolay@redhat.com>
+Nikolay Aleksandrov <razor@blackwall.org> <nikolay@cumulusnetworks.com>
+Nikolay Aleksandrov <razor@blackwall.org> <nikolay@nvidia.com>
+Nikolay Aleksandrov <razor@blackwall.org> <nikolay@isovalent.com>
+Oleksij Rempel <linux@rempel-privat.de> <bug-track@fisher-privat.net>
+Oleksij Rempel <linux@rempel-privat.de> <external.Oleksij.Rempel@de.bosch.com>
+Oleksij Rempel <linux@rempel-privat.de> <fixed-term.Oleksij.Rempel@de.bosch.com>
+Oleksij Rempel <o.rempel@pengutronix.de>
+Oleksij Rempel <o.rempel@pengutronix.de> <ore@pengutronix.de>
+Paul E. McKenney <paulmck@kernel.org> <paul.mckenney@linaro.org>
+Paul E. McKenney <paulmck@kernel.org> <paulmck@linux.ibm.com>
+Paul E. McKenney <paulmck@kernel.org> <paulmck@linux.vnet.ibm.com>
+Paul E. McKenney <paulmck@kernel.org> <paulmck@us.ibm.com>
+Randy Dunlap <rdunlap@infradead.org> <rdunlap@xenotime.net>
+Randy Dunlap <rdunlap@infradead.org> <randy.dunlap@oracle.com>
+Randy Dunlap <rdunlap@infradead.org> <rddunlap@osdl.org>
+Randy Dunlap <rdunlap@infradead.org> <randy.dunlap@intel.com>
+Simon Wunderlich <sw@simonwunderlich.de> <simon@open-mesh.com>
+Simon Wunderlich <sw@simonwunderlich.de> <simon.wunderlich@open-mesh.com>
+Simon Wunderlich <sw@simonwunderlich.de> <simon.wunderlich@s2003.tu-chemnitz.de>
+Simon Wunderlich <sw@simonwunderlich.de> <siwu@hrz.tu-chemnitz.de>
+Sven Eckelmann <sven@narfation.org> <sven.eckelmann@gmx.de>
+Sven Eckelmann <sven@narfation.org> <sven.eckelmann@open-mesh.com>
+Sven Eckelmann <sven@narfation.org> <sven.eckelmann@openmesh.com>
+Sven Eckelmann <sven@narfation.org> <sven@open-mesh.com>

---
base-commit: c37dff40d07fbceb9d8b5d872f971ecc54da7fcc
change-id: 20250107-mailmap-d61a1fc2db80

Best regards,
-- 
Sven Eckelmann <sven@narfation.org>

