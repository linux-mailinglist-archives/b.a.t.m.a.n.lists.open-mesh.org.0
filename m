Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DDA3CC2C0
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 17 Jul 2021 13:11:42 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B467C80580;
	Sat, 17 Jul 2021 13:11:36 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 746E88129F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 17 Jul 2021 13:11:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1626519694;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qwDQqH8Rl3AyUNLTcOdCZlK+ID9AJcJ/WawcnrB6u+c=;
	b=X8N9Ks3KhrAB2U0XpXCipepSHwJUc9ssIEkDd6kOrxVZn1zZcTwfK2RovAGubBCUPrOba4
	qFkTobfSlx7C7xGdcAYIfKJem7aeRlRzQuoU1z2spQFX3yNhgHiMgtUwYFBh3vrFCto+ik
	4qTPwia1TqkJEmfeWQg01c0lp0dFMTg=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
Subject: [PATCH 6/9] batctl: man: Switch to manpage font convention
Date: Sat, 17 Jul 2021 13:01:26 +0200
Message-Id: <20210717110129.25539-7-sven@narfation.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210717110129.25539-1-sven@narfation.org>
References: <20210717110129.25539-1-sven@narfation.org>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1626520274;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=qwDQqH8Rl3AyUNLTcOdCZlK+ID9AJcJ/WawcnrB6u+c=;
	b=SItfKUN0mFTEGzR6QwqhqIaa4MLXyBcF6sv0/lTfaSgsVAUK6cr6aLCOAehMxnSsA6Z8aS
	dpl9GBOPhbVRwVhQq2n3Dr8u/Bx4+xfKDXC6rVQ8pKJlblEuk5j27NzDRC7QCYwQt0wEtR
	GJ2GePARxD83OC9wJQpIg90MM6LDZRc=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1626520274; a=rsa-sha256;
	cv=none;
	b=2kGPRd7YwvdKrUIbxzx3HDYVa7aTCvc+HN09I83cg34/G9WOPoEQBikPf86n0kHPk4Or3B
	izmt5HOjEwqevfezvLG4qsUE7KOtLlMM0DJuPiDc1twqLBV7cUUfGX8j0IO/FQTE6Do2YV
	/uHwQGKWxyyZ5a49a4u4I8RlxQq8pYU=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=X8N9Ks3K;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: ZT2MU4WZPPGHJ74MKLFA4PLXPZNORSQB
X-Message-ID-Hash: ZT2MU4WZPPGHJ74MKLFA4PLXPZNORSQB
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/ZT2MU4WZPPGHJ74MKLFA4PLXPZNORSQB/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

The manpage specifies following convention to make the reading of command
synopses:

  bold text          type exactly as shown.
  italic text        replace with appropriate argument.
  [-abc]             any or all arguments within [ ] are optional.
  -a|-b              options delimited by | cannot be used together.
  argument ...       argument is repeatable.
  [expression] ...   entire expression within [ ] is repeatable.

But the batctl manpage make basically everything bold and thus made it
harder to differentiate user defined parameters and keywords.

Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 man/batctl.8 | 80 +++++++++++++++++++++++++++++-----------------------
 1 file changed, 45 insertions(+), 35 deletions(-)

diff --git a/man/batctl.8 b/man/batctl.8
index 079cc0a..009494f 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -42,56 +42,66 @@ behaviour or using the B.A.T.M.A.N. advanced protocol=
. For similar reasons, \fBt
 performances, is also included.
=20
 .SH OPTIONS
-\-m     specify mesh interface (default 'bat0')
-.br
-\-h     print general batctl help
-.br
-\-v     print batctl version and batman-adv version (if the module is lo=
aded)
-.br
+
+.TP
+\fB\-m\fP
+specify mesh interface (default 'bat0')
+.TP
+\fB\-h\fP
+print general batctl help
+.TP
+\fB-v\fP
+print batctl version and batman-adv version (if the module is loaded)
=20
 .SH COMMANDS
=20
 .TP
-[\fBmeshif <netdev>\fP] \fBinterface\fP|\fBif\fP [\fB-M\fP] [\fBadd\fP|\=
fBdel iface(s)\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBinterface\fP|\fBif\fP
+.TQ
+[\fBmeshif\fP \fInetdev\fP] \fBinterface\fP|\fBif\fP [\fB-M\fP] \fBadd\f=
P|\fBdel\fP \fIiface\fP ...
 If no parameter is given or the first parameter is neither "add" nor "de=
l" the current interface settings are displayed.
 In order to add or delete interfaces specify "add" or "del" as first arg=
ument and append the interface names you wish to
 add or delete. Multiple interfaces can be specified.
 The "\-M" option tells batctl to not automatically create the batman-adv=
 interface on "add". It can also be used to
 suppress the warning about the manual destruction when "del" removed all=
 interfaces which belonged to it.
 .TP
-[\fBmeshif <netdev>\fP] \fBinterface\fP|\fBif\fP \fBcreate\fP [\fBroutin=
g_algo|ra RA_NAME\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBinterface\fP|\fBif\fP \fBcreate\fP [\fBro=
uting_algo\fP|\fBra\fP \fIRA_NAME\fP]
 A batman-adv interface without attached interfaces can be created using =
"create". The parameter routing_algo
 can be used to overwrite the (default) routing algorithm.
 .TP
-[\fBmeshif <netdev>\fP] \fBinterface\fP|\fBif\fP \fBdestroy\fP
+[\fBmeshif\fP \fInetdev\fP] \fBinterface\fP|\fBif\fP \fBdestroy\fP
 Remove all attached interfaces and destroy the batman-adv interface.
 .TP
-[\fBmeshif <netdev>\fP] \fBorig_interval\fP|\fBit\fP [\fBinterval\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBorig_interval\fP|\fBit\fP [\fIinterval\fP=
]
 If no parameter is given the current originator interval setting is disp=
layed otherwise the parameter is used to set the
 originator interval. The interval is in units of milliseconds.
 .TP
-[\fBmeshif <netdev>\fP] \fBap_isolation\fP|\fBap\fP [\fB0\fP|\fB1\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBap_isolation\fP|\fBap\fP [\fI0\fP|\fI1\fP=
]
 If no parameter is given the current ap isolation setting is displayed. =
Otherwise the parameter is used to enable or
 disable ap isolation.
 .TP
-<\fBvlan <vdev>\fP|[\fBmeshif <netdev>\fP] \fBvid <vid>\fP> \fBap_isolat=
ion\fP|\fBap\fP [\fB0\fP|\fB1\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBap_isolation\fP|\fBap\fP [\fI0\fP|\fI1\fP=
]
+.TQ
+[\fBmeshif\fP \fInetdev\fP] \fBvid <vid>\fP \fBap_isolation\fP|\fBap\fP =
[\fI0\fP|\fI1\fP]
+.TQ
+\fBvlan\fP \fIvdev\fP \fBap_isolation\fP|\fBap\fP [\fI0\fP|\fI1\fP]
 If no parameter is given the current ap isolation setting for the specif=
ied VLAN is displayed. Otherwise the parameter is used to enable or
 disable ap isolation for the specified VLAN.
 .TP
-[\fBmeshif <netdev>\fP] \fBbridge_loop_avoidance\fP|\fBbl\fP [\fB0\fP|\f=
B1\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBbridge_loop_avoidance\fP|\fBbl\fP [\fI0\f=
P|\fI1\fP]
 If no parameter is given the current bridge loop avoidance setting is di=
splayed. Otherwise the parameter is used to enable
 or disable the bridge loop avoidance. Bridge loop avoidance support has =
to be enabled when compiling the module otherwise
 this option won't be available.
 .TP
-[\fBmeshif <netdev>\fP] \fBdistributed_arp_table\fP|\fBdat\fP [\fB0\fP|\=
fB1\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBdistributed_arp_table\fP|\fBdat\fP [\fI0\=
fP|\fI1\fP]
 If no parameter is given the current distributed arp table setting is di=
splayed. Otherwise the parameter is used to
 enable or disable the distributed arp table.
 .TP
-[\fBmeshif <netdev>\fP] \fBaggregation\fP|\fBag\fP [\fB0\fP|\fB1\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBaggregation\fP|\fBag\fP [\fI0\fP|\fI1\fP]
 If no parameter is given the current aggregation setting is displayed. O=
therwise the parameter is used to enable or disable
 OGM packet aggregation.
 .TP
-[\fBmeshif <netdev>\fP] \fBbonding\fP|\fBb\fP [\fB0\fP|\fB1\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBbonding\fP|\fBb\fP [\fI0\fP|\fI1\fP]
 If no parameter is given the current bonding mode setting is displayed. =
Otherwise the parameter is used to enable or disable
 the bonding mode.
 .TP
@@ -99,38 +109,38 @@ the bonding mode.
 batctl will monitor for events from the netlink kernel interface of batm=
an-adv. The local timestamp of the event will be printed
 when parameter \fB\-t\fP is specified. Parameter \fB\-r\fP will do the s=
ame but with relative timestamps.
 .TP
-\fBhardif <hardif>\fP \fBelp_interval\fP|\fBet\fP [\fBinterval\fP]
+\fBhardif\fP \fIhardif\fP \fBelp_interval\fP|\fBet\fP [\fIinterval\fP]
 If no parameter is given the current ELP interval setting of the hard in=
terface is displayed otherwise the parameter is used to set the
 ELP interval. The interval is in units of milliseconds.
 .TP
-[\fBmeshif <netdev>\fP] \fBfragmentation\fP|\fBf\fP [\fB0\fP|\fB1\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBfragmentation\fP|\fBf\fP [\fI0\fP|\fI1\fP=
]
 If no parameter is given the current fragmentation mode setting is displ=
ayed. Otherwise the parameter is used to enable or
 disable fragmentation.
 .TP
-[\fBmeshif <netdev>\fP] \fBhop_penalty\fP|\fBhp\fP [\fBpenalty\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBhop_penalty\fP|\fBhp\fP [\fIpenalty\fP]
 If no parameter is given the current hop penalty setting is displayed. O=
therwise the parameter is used to set the
 hop penalty. The penalty is can be 0-255 (255 sets originator message's =
TQ to zero when forwarded by this hop).
 .TP
-[\fBhardif <hardif>\fP] \fBhop_penalty\fP|\fBhp\fP [\fBpenalty\fP]
+[\fBhardif\fP \fIhardif\fP] \fBhop_penalty\fP|\fBhp\fP [\fIpenalty\fP]
 If no parameter is given the current hop penalty setting of the hard int=
erface is displayed. Otherwise the parameter is used to set the
 hop penalty. The penalty can be 0-255 (255 sets originator message's TQ =
to zero when forwarded over this interface).
 .TP
-[\fBmeshif <netdev>\fP] \fBnetwork_coding\fP|\fBnc\fP [\fB0\fP|\fB1\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBnetwork_coding\fP|\fBnc\fP [\fI0\fP|\fI1\=
fP]
 If no parameter is given the current network coding mode setting is disp=
layed. Otherwise the parameter is used to enable or
 disable network coding.
 .TP
-[\fBmeshif <netdev>\fP] \fBmulticast_forceflood\fP|\fBmff\fP [\fB0\fP|\f=
B1\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBmulticast_forceflood\fP|\fBmff\fP [\fI0\f=
P|\fI1\fP]
 If no parameter is given the current multicast forceflood setting is dis=
played. Otherwise the parameter is used to enable or
 disable multicast forceflood. This setting defines whether multicast opt=
imizations should be replaced by simple broadcast-like
 flooding of multicast packets. If set to non-zero then all nodes in the =
mesh are going to use classic flooding for any
 multicast packet with no optimizations.
 .TP
-[\fBmeshif <netdev>\fP] \fBmulticast_fanout\fP|\fBmo\fP [\fBfanout\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBmulticast_fanout\fP|\fBmo\fP [\fIfanout\f=
P]
 If no parameter is given the current multicast fanout setting is display=
ed. Otherwise the parameter is used to set
 the multicast fanout. The multicast fanout defines the maximum number of=
 packet copies that may be generated for a
 multicast-to-unicast conversion. Once this limit is exceeded distributio=
n will fall back to broadcast.
 .TP
-[\fBmeshif <netdev>\fP] \fBloglevel\fP|\fBll\fP [\fBlevel\fP[ \fBlevel\f=
P[ \fBlevel\fP]] \fB...\fP]
+[\fBmeshif\fP \fInetdev\fP] \fBloglevel\fP|\fBll\fP [\fIlevel\fP ...]
 If no parameter is given the current log level settings are displayed ot=
herwise the parameter(s) is/are used to set the log
 level. Level 'none' disables all verbose logging. Level 'batman' enables=
 messages related to routing / flooding / broadcasting.
 Level 'routes' enables messages related to routes being added / changed =
/ deleted. Level 'tt' enables messages related to
@@ -140,7 +150,7 @@ Level 'mcast' enables messages related to multicast o=
ptimizations. Level 'tp' en
 Level 'all' enables all messages. The messages are sent to the kernels t=
race buffers. Use \fBtrace-cmd stream -e batadv:batadv_dbg\fP
 to receive the system wide log messages.
 .TP
-[\fBmeshif <netdev>\fP] \fBgw_mode|gw\fP [\fBoff\fP|\fBclient\fP|\fBserv=
er\fP] [\fBsel_class|bandwidth\fP]\fP
+[\fBmeshif\fP \fInetdev\fP] \fBgw_mode|gw\fP [\fBoff\fP|\fBclient\fP|\fB=
server\fP] [\fIsel_class\fP|\fIbandwidth\fP]
 If no parameter is given the current gateway mode is displayed otherwise=
 the parameter is used to set the gateway mode. The
 second (optional) argument specifies the selection class (if 'client' wa=
s the first argument) or the gateway bandwidth (if 'server'
 was the first argument). If the node is a server this parameter is used =
to inform other nodes in the network about
@@ -207,19 +217,19 @@ gateway or the maximum bandwidth across the entire =
path.
 .RE
 .br
 .TP
-\fBrouting_algo\fP|\fBra\fP [\fBalgorithm\fP]\fP
+\fBrouting_algo\fP|\fBra\fP [\fIalgorithm\fP]
 If no parameter is given the current routing algorithm configuration as =
well as
 supported routing algorithms are displayed.
 Otherwise the parameter is used to select the routing algorithm for the =
following
 batX interface to be created.
 .TP
-\fBhardif <hardif>\fP \fBthroughput_override|to\fP [\fBbandwidth\fP]\fP
+\fBhardif\fP \fIhardif\fP \fBthroughput_override|to\fP [\fIbandwidth\fP]
 If no parameter is given the current througput override is displayed oth=
erwise
 the parameter is used to set the throughput override for the specified h=
ard
 interface.
 Just enter any number (optionally followed by "kbit" or "mbit").
 .TP
-[\fBmeshif <netdev>\fP] \fBisolation_mark\fP|\fBmark\fP
+[\fBmeshif\fP \fInetdev\fP] \fBisolation_mark\fP|\fBmark\fP [\fIvalue\fP=
[/\fImask\fP]]
 If no parameter is given the current isolation mark value is displayed.
 Otherwise the parameter is used to set or unset the isolation mark used =
by the
 Extended Isolation feature.
@@ -322,12 +332,12 @@ transtable_local_json|tlj
 vlan_json|vj
 .RE
 .TP
-[\fBmeshif <netdev>\fP] \fBtranslate\fP|\fBt\fP \fBMAC_address\fP|\fBbat=
\-host_name\fP|\fBhost_name\fP|\fBIP_address\fP
+[\fBmeshif\fP \fInetdev\fP] \fBtranslate\fP|\fBt\fP \fIMAC_address\fP|\f=
Ibat\-host_name\fP|\fIhost_name\fP|\fIIP_address\fP
=20
 Translates a destination (hostname, IP, MAC, bat_host-name) to the origi=
nator
 mac address responsible for it.
 .TP
-[\fBmeshif <netdev>\fP] \fBstatistics\fP|\fBs\fP
+[\fBmeshif\fP \fInetdev\fP] \fBstatistics\fP|\fBs\fP
 Retrieve traffic counters from batman-adv kernel module. The output may =
vary depending on which features have been compiled
 into the kernel module.
 .br
@@ -344,7 +354,7 @@ T}
 .TE
 All counters without a prefix concern payload (pure user data) traffic.
 .TP
-[\fBmeshif <netdev>\fP] \fBping\fP|\fBp\fP [\fB\-c count\fP][\fB\-i inte=
rval\fP][\fB\-t time\fP][\fB\-R\fP][\fB\-T\fP] \fBMAC_address\fP|\fBbat\-=
host_name\fP|\fBhost_name\fP|\fBIP_address\fP
+[\fBmeshif\fP \fInetdev\fP] \fBping\fP|\fBp\fP [\fB\-c\fP \fIcount\fP][\=
fB\-i\fP \fIinterval\fP][\fB\-t\fP \fItime\fP][\fB\-R\fP][\fB\-T\fP] \fIM=
AC_address\fP|\fIbat\-host_name\fP|\fIhost_name\fP|\fIIP_address\fP
 Layer 2 ping of a MAC address or bat\-host name.  batctl will try to fin=
d the bat\-host name if the given parameter was
 not a MAC address. It can also try to guess the MAC address using an IPv=
4/IPv6 address or a hostname when
 the IPv4/IPv6 address was configured on top of the batman-adv interface =
of the destination device and both source and
@@ -355,7 +365,7 @@ interval between pings and the timeout time for repli=
es, both in seconds. When r
 messages will be recorded. With "\-T" you can disable the automatic tran=
slation of a client MAC address to the originator
 address which is responsible for this client.
 .TP
-[\fBmeshif <netdev>\fP] \fBtraceroute\fP|\fBtr\fP [\fB\-n\fP][\fB\-T\fP]=
 \fBMAC_address\fP|\fBbat\-host_name\fP|\fBhost_name\fP|\fBIP_address\fP
+[\fBmeshif\fP \fInetdev\fP] \fBtraceroute\fP|\fBtr\fP [\fB\-n\fP][\fB\-T=
\fP] \fIMAC_address\fP|\fIbat\-host_name\fP|\fIhost_name\fP|\fIIP_address=
\fP
 Layer 2 traceroute to a MAC address or bat\-host name. batctl will try t=
o find the bat\-host name if the given parameter
 was not a MAC address. It can also try to guess the MAC address using an=
 IPv4/IPv6 address or a hostname when
 the IPv4/IPv6 address was configured on top of the batman-adv interface =
of the destination device and both source and
@@ -364,7 +374,7 @@ batctl will send 3 packets to each host and display t=
he response time. If "\-n"
 not replace the MAC addresses with bat\-host names in the output. With "=
\-T" you can disable the automatic translation
 of a client MAC address to the originator address which is responsible f=
or this client.
 .TP
-\fBtcpdump\fP|\fBtd\fP [\fB\-c\fP][\fB\-n\fP][\fB\-p filter\fP][\fB\-x f=
ilter\fP] \fBinterface ...\fP
+\fBtcpdump\fP|\fBtd\fP [\fB\-c\fP][\fB\-n\fP][\fB\-p\fP \fIfilter\fP][\f=
B\-x\fP \fIfilter\fP] \fBinterface ...\fP
 batctl will display all packets that are seen on the given interface(s).=
 A variety of options to filter the output
 are available: To only print packets that match the compatibility number=
 of batctl specify the "\-c" (compat filter)
 option. If "\-n" is given batctl will not replace the MAC addresses with=
 bat\-host names in the output. To filter
@@ -402,7 +412,7 @@ T}
 Example: batctl td <interface> \-p 129 \-> only display batman ogm packe=
ts and non batman packets
=20
 .TP
-\fBbisect_iv\fP [\fB\-l MAC\fP][\fB\-t MAC\fP][\fB\-r MAC\fP][\fB\-s min=
\fP [\fB\- max\fP]][\fB\-o MAC\fP][\fB\-n\fP] \fBlogfile1\fP [\fBlogfile2=
\fP ... \fBlogfileN\fP]
+\fBbisect_iv\fP [\fB\-l MAC\fP][\fB\-t\fP \fIMAC\fP][\fB\-r\fP \fIMAC\fP=
][\fB\-s\fP \fImin\fP [\- \fImax\fP]][\fB\-o\fP \fIMAC\fP][\fB\-n\fP] \fI=
logfile1\fP ...
 Analyses the B.A.T.M.A.N. IV logfiles to build a small internal database=
 of all sent sequence numbers and routing table
 changes. This database can then be analyzed in a number of different way=
s. With "\-l" the database can be used to search
 for routing loops. Use "\-t" to trace OGMs of a host throughout the netw=
ork. Use "\-r" to display routing tables of the
@@ -411,7 +421,7 @@ specific sequence number, min. Furthermore using "\-o=
" you can filter the output
 given batctl will not replace the MAC addresses with bat\-host names in =
the output.
 .RE
 .TP
-[\fBmeshif <netdev>\fP] \fBthroughputmeter\fP|\fBtp\fP \fBMAC\fP
+[\fBmeshif\fP \fInetdev\fP] \fBthroughputmeter\fP|\fBtp\fP \fIMAC\fP
 This command starts a throughput test entirely controlled by batman modu=
le in
 kernel space: the computational resources needed to align memory and cop=
y data
 between user and kernel space that are required by other user space tool=
s may
--=20
2.30.2
