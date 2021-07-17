Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id D62903CC2C4
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 17 Jul 2021 13:12:01 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id BF5488253A;
	Sat, 17 Jul 2021 13:11:55 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 39ECF8129F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 17 Jul 2021 13:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1626519695;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+JirC6zJp36OVaNL5uLrBLjtPdWMIPSYEIZ4P0dOHbQ=;
	b=gopO5wAuUOQPBllEV8OdfLv5wpi2O1m88tMtN+vLV7usOuDMnchh9lpohQyzSwVqpZUYDH
	G3kIa/iYc8G5IeooCuu9tzImlMqx67S+FUKglSepF3VOo8/NhCo59ti8v4cZtTY3Uz9d2W
	eQ2AVS6lmfh4s5W3SyiWdaBXPzAdCjQ=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 7/9] batctl: man: Add example section
Date: Sat, 17 Jul 2021 13:01:27 +0200
Message-Id: <20210717110129.25539-8-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210717110129.25539-1-sven@narfation.org>
References: <20210717110129.25539-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1626520275;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=+JirC6zJp36OVaNL5uLrBLjtPdWMIPSYEIZ4P0dOHbQ=;
	b=TdX+osAPE9lgao6o3xYM0BPm4GM1DyXVU/5dFaCb153OkY2Mwq0XaQO1pKYFQIPBo5yczn
	0UWw1p2FiljzJnCKrWYP/UZzr/UvoX4kotvdHTKxBqq9n7QFQbDCyAHTRR8SW2pPfKfktQ
	Kc2m4mt3gBj6q3toZILQEkolx9wu74Q=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1626520275; a=rsa-sha256;
	cv=none;
	b=TxQPSLERa1xg4o7nW7o3SM4TJymSlcXt59UIr5qLxs1DW/Rc4LVWFIhIAOV+5lbiMQkhKo
	g25Eg0JUcQA8kWDXZ6o5N+ZNA3Iao3RmPovs2Md8VHi/y24e/ATvoa3RqUdIPbIE1TCArc
	Zoj+VHFboYJp5EhtGEG3xprScnrMep0=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=gopO5wAu;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: 3TF2LFJIA43O6NKIM6Z7UVHRLOQ7JTTC
X-Message-ID-Hash: 3TF2LFJIA43O6NKIM6Z7UVHRLOQ7JTTC
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/3TF2LFJIA43O6NKIM6Z7UVHRLOQ7JTTC/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

A very simple example can help users to figure out how to get a very simp=
le
mesh running. This allows to figure out the correct order of commands
directly from the manpage without needing additional (maybe currently
unreachable) resources from the internet.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 man/batctl.8 | 60 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/man/batctl.8 b/man/batctl.8
index 009494f..4cc55f9 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -437,6 +437,65 @@ together with the experiment duration in millisecond=
 and the amount of bytes
 transferred. If too many packets are lost or the specified MAC address i=
s not
 reachable, a message notifying the error is returned instead of the resu=
lt.
=20
+.SH EXAMPLES
+The setup of a batadv interface usually consists of creation of the the =
main
+interface, attaching of the (lower) hard-interface, adjusting of setting=
s
+and bringup of the interface:
+.PP
+.in +4n
+.EX
+# create batadv (mesh) interface bat0 with routing algorithm B.A.T.M.A.N=
. IV
+.RB "$" " batctl meshif bat0 interface create routing_algo BATMAN_IV"
+# add the (already up and running) mesh0 interface as lower (hard) inter=
face to bat0
+.RB "$" " batctl meshif bat0 interface -M add mesh0"
+# change some settings to better match the requirements of the user
+.RB "$" " batctl meshif bat0 orig_interval 5000"
+.RB "$" " batctl meshif bat0 distributed_arp_table disable"
+.RB "..."
+# set the batadv (mesh) interface up before it is possible to use it
+.RB "$" " ip link set up dev bat0"
+.EE
+.in
+
+This only makes sure that the layer 2 functionality of bat0 is started u=
p. It
+is the responsibility of the user to make sure that the bat0 device itse=
lf
+gets attached to a bridge, configured with an IP address (manually/DHCP =
client/...)
+or integrated in other parts of the system before it gets used.
+.PP
+Also the attached (lower) hard-interfaces attached to the batadv interfa=
ce must
+be configured by the user to support transportation of ethernet unicast =
and
+broadcast packets between its linked peers. The most common reason for a=
 not
+working batman-adv mesh are incorrect configurations of the hard-interfa=
ces,
+hardware, firmware or driver bugs which prevent that some of the packet =
types
+are correctly exchanged.
+.PP
+The current status of interface can be checked using the debug tables. I=
t is
+often relevant to check from which direct neighbors discovery packets we=
re
+received.
+The next step is to check the (preferred) routes to originators. These w=
ill
+only be established when the metric has detected bidirectional connectio=
ns
+between neighbors and might have forwarded discovery packets from not di=
rectly
+reachable nodes/originators.
+.PP
+.in +4n
+.EX
+# get list of neighbors from which the current node was able to receive =
discovery packets
+.RB "$" " batctl meshif bat0 neighbors"
+# get (preferred) routes the routing algorithm found
+.RB "$" " batctl meshif bat0 originators"
+.EE
+.in
+.PP
+If the bat0 interface should no longer used by the system, it can be des=
troyed
+again:
+.PP
+.in +4n
+.EX
+# destroy the interface and let the system remove its state
+.RB "$" " batctl meshif bat0 interface destroy"
+.EE
+.in
+
 .SH FILES
 .TP
 \fBbat-hosts\fP
@@ -444,6 +503,7 @@ This file is similar to the /etc/hosts file. You can =
write one MAC address and o
 for bat-hosts in /etc, your home directory and the current directory. Th=
e found data is used to match MAC address to your
 provided host name or replace MAC addresses in debug output and logs. Ho=
st names are much easier to remember than MAC
 addresses.
+
 .SH SEE ALSO
 .BR ping (1),
 .BR traceroute (1),
--=20
2.30.2
