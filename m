Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D1428A717
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 11 Oct 2020 13:10:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 77A3280381;
	Sun, 11 Oct 2020 13:09:59 +0200 (CEST)
Received: from dvalin.narfation.org (dvalin.narfation.org [IPv6:2a00:17d8:100::8b1])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 93941802E1
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 11 Oct 2020 13:09:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1602414595;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ZcfMzMfeI0BAg+g2ZYNOkXYoYNybFENHicg9vAYci7w=;
	b=INfnusnlZLIYmpdwUnx8LlOyK+4yu/sJfaCZlwjNB7vh2PMFKmUl7eY0FpM4d737vah6Lg
	9HXrQEkE1GJHsIIOSDwtyhese5iCM8sxQ9HVevXj28sAhEi/rNhMx3/AsyK7zL+s+HiPhM
	ZVqjWpExFi02eceEd795YCsfpecEMYY=
From: Sven Eckelmann <sven@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batctl: Allow to configure routing_algo during interface creation
Date: Sun, 11 Oct 2020 13:09:50 +0200
Message-Id: <20201011110950.304698-1-sven@narfation.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1602414596; a=rsa-sha256;
	cv=none;
	b=z21hYVmD+DUXqDDfmTZF8vjLtkaVNhyTe6N2WVU8O1SvKHeWDMMMMsi8j+/pis2ICAIDIq
	MO/G5SXFY/kSFtk3wOs8plXzJ828UXPc+MZ/pFtgRB1OncFnUeMVMy/1/asF7oYPjbO8sK
	bq18g0aNvlY+B4I02syA1H8NBg3Ddfg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b=INfnusnl;
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates 2a00:17d8:100::8b1 as permitted sender) smtp.mailfrom=sven@narfation.org
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1602414596;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=ZcfMzMfeI0BAg+g2ZYNOkXYoYNybFENHicg9vAYci7w=;
	b=0sikaCJaGaGv1Qgrm/udbn/RN7x37CVrBMFZNYif1Ua1CS32DYqsRws2/iq51IVdopo+Uq
	6EmD5xgq9uqkc2ASyEWYZxOJqVJjZm7gRZBvPzB2sfxvXfLc1tkjzL9pj70lufYtXNT7eP
	QjPMhc45EU3e3/i7oLlgJb+6oWPHgxA=
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: TRKBQZYRROPED33QSA73IS2JVYNOO2DO
X-Message-ID-Hash: TRKBQZYRROPED33QSA73IS2JVYNOO2DO
X-MailFrom: sven@narfation.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
CC: Annika Wickert <annika.wickert@exaring.de>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/TRKBQZYRROPED33QSA73IS2JVYNOO2DO/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

A batadv net_device is associated to a B.A.T.M.A.N. routing algorithm. Th=
is
algorithm has to be selected before the interface is initialized and cann=
ot
be changed after that. The only way to select this algorithm was a module
parameter which specifies the default algorithm used during the creation =
of
the net_device.

This module parameter is writeable over
/sys/module/batman_adv/parameters/routing_algo and thus allows switching =
of
the routing algorithm:

1. change routing_algo parameter
2. create new batadv net_device

But this is not race free because another process can be scheduled betwee=
n
1 + 2 and in that time frame change the routing_algo parameter again.

It is much cleaner to directly provide this information inside the
rtnetlink's RTM_NEWLINK message. The two processes would be (in regards o=
f
the creation parameter of their batadv interfaces) be isolated.

This can now be done (with a compatible kernel module) using the
routing_algo parameter of interface create:

  $ batctl meshif bat0 interface create routing_algo BATMAN_IV
  or
  $ batctl meshif bat0 interface create routing_algo BATMAN_V

Cc: Annika Wickert <annika.wickert@exaring.de>
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
This version uses a parameter like ip-link. Another option to implement i=
t
would be to use some kind of --routing_algo option like the -M option whi=
ch
already exists. Maybe some people have a preference how the commandline
interface should look like.


 batman_adv.h | 26 ++++++++++++++++++++
 interface.c  | 69 ++++++++++++++++++++++++++++++++++++++++++++++++----
 man/batctl.8 |  8 +++---
 3 files changed, 95 insertions(+), 8 deletions(-)

diff --git a/batman_adv.h b/batman_adv.h
index bb0ae94..bdb317f 100644
--- a/batman_adv.h
+++ b/batman_adv.h
@@ -675,4 +675,30 @@ enum batadv_tp_meter_reason {
 	BATADV_TP_REASON_TOO_MANY		=3D 133,
 };
=20
+/**
+ * enum batadv_ifla_attrs - batman-adv ifla nested attributes
+ */
+enum batadv_ifla_attrs {
+	/**
+	 * @IFLA_BATADV_UNSPEC: unspecified attribute which is not parsed by
+	 *  rtnetlink
+	 */
+	IFLA_BATADV_UNSPEC,
+
+	/**
+	 * @IFLA_BATADV_ALGO_NAME: routing algorithm (name) which should be
+	 *  used by the newly registered batadv net_device.
+	 */
+	IFLA_BATADV_ALGO_NAME,
+
+	/* add attributes above here, update the policy in soft-interface.c */
+
+	/**
+	 * @__IFLA_BATADV_MAX: internal use
+	 */
+	__IFLA_BATADV_MAX,
+};
+
+#define IFLA_BATADV_MAX (__IFLA_BATADV_MAX - 1)
+
 #endif /* _UAPI_LINUX_BATMAN_ADV_H_ */
diff --git a/interface.c b/interface.c
index d0d9435..73720e3 100644
--- a/interface.c
+++ b/interface.c
@@ -29,7 +29,8 @@
 static void interface_usage(void)
 {
 	fprintf(stderr, "Usage: batctl [options] interface [parameters] [add|de=
l iface(s)]\n");
-	fprintf(stderr, "       batctl [options] interface [parameters] [create=
|destroy]\n");
+	fprintf(stderr, "       batctl [options] interface [parameters] create =
[routing_algo|ra RA_NAME]\n");
+	fprintf(stderr, "       batctl [options] interface [parameters] destroy=
\n");
 	fprintf(stderr, "parameters:\n");
 	fprintf(stderr, " \t -M disable automatic creation of batman-adv interf=
ace\n");
 	fprintf(stderr, " \t -h print this help\n");
@@ -256,12 +257,47 @@ static unsigned int count_interfaces(char *mesh_ifa=
ce)
 	return count_arg.count;
 }
=20
-static int create_interface(const char *mesh_iface)
+struct interface_create_params {
+	const char *routing_algo;
+};
+
+static int
+interface_parse_create_params(int argc, char **argv,
+			      struct interface_create_params *create_params)
+{
+	int pos =3D 1;
+
+	while (pos < argc) {
+		if (strcmp(argv[pos], "routing_algo") =3D=3D 0 ||
+		    strcmp(argv[pos], "ra") =3D=3D 0) {
+			pos++;
+			if (pos >=3D argc) {
+				fprintf(stderr,
+					"Error - missing parameter for 'routing_algo'\n");
+				return -EINVAL;
+			}
+
+			create_params->routing_algo =3D argv[pos];
+			pos++;
+		} else {
+			fprintf(stderr,
+				"Error - unknown parameter '%s'\n",
+				argv[pos]);
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
+static int create_interface(const char *mesh_iface,
+			    const struct interface_create_params *create_param)
 {
 	struct ifinfomsg rt_hdr =3D {
 		.ifi_family =3D IFLA_UNSPEC,
 	};
 	struct nlattr *linkinfo;
+	struct nlattr *linkdata;
 	struct nl_msg *msg;
 	int err =3D 0;
 	int ret;
@@ -296,6 +332,22 @@ static int create_interface(const char *mesh_iface)
 		goto err_free_msg;
 	}
=20
+	linkdata =3D nla_nest_start(msg, IFLA_INFO_DATA);
+	if (!linkdata) {
+		err =3D -ENOMEM;
+		goto err_free_msg;
+	}
+
+	if (create_param->routing_algo) {
+		ret =3D nla_put_string(msg, IFLA_BATADV_ALGO_NAME,
+				     create_param->routing_algo);
+		if (ret < 0) {
+			err =3D -ENOMEM;
+			goto err_free_msg;
+		}
+	}
+
+	nla_nest_end(msg, linkdata);
 	nla_nest_end(msg, linkinfo);
=20
 	err =3D netlink_simple_request(msg);
@@ -382,6 +434,7 @@ static int set_master_interface(const char *iface, un=
signed int ifmaster)
=20
 static int interface(struct state *state, int argc, char **argv)
 {
+	struct interface_create_params create_params =3D {};
 	int i, optchar;
 	int ret;
 	unsigned int ifindex;
@@ -438,7 +491,6 @@ static int interface(struct state *state, int argc, c=
har **argv)
 			goto err;
 		}
 		break;
-	case 'c':
 	case 'D':
 		if (rest_argc !=3D 1) {
 			fprintf(stderr,
@@ -448,13 +500,20 @@ static int interface(struct state *state, int argc,=
 char **argv)
 			goto err;
 		}
 		break;
+	case 'c':
+		ret =3D interface_parse_create_params(rest_argc, rest_argv,
+						    &create_params);
+		if (ret) {
+			interface_usage();
+			goto err;
+		}
 	default:
 		break;
 	}
=20
 	switch (rest_argv[0][0]) {
 	case 'c':
-		ret =3D create_interface(state->mesh_iface);
+		ret =3D create_interface(state->mesh_iface, &create_params);
 		if (ret < 0) {
 			fprintf(stderr,
 				"Error - failed to add create batman-adv interface: %s\n",
@@ -478,7 +537,7 @@ static int interface(struct state *state, int argc, c=
har **argv)
 	/* get index of batman-adv interface - or try to create it */
 	ifmaster =3D if_nametoindex(state->mesh_iface);
 	if (!manual_mode && !ifmaster && rest_argv[0][0] =3D=3D 'a') {
-		ret =3D create_interface(state->mesh_iface);
+		ret =3D create_interface(state->mesh_iface, &create_params);
 		if (ret < 0) {
 			fprintf(stderr,
 				"Error - failed to create batman-adv interface: %s\n",
diff --git a/man/batctl.8 b/man/batctl.8
index 1737e17..de84ffc 100644
--- a/man/batctl.8
+++ b/man/batctl.8
@@ -60,9 +60,11 @@ In order to add or delete interfaces specify "add" or =
"del" as first argument an
 add or delete. Multiple interfaces can be specified.
 The "\-M" option tells batctl to not automatically create the batman-adv=
 interface on "add". It can also be used to
 suppress the warning about the manual destruction when "del" removed all=
 interfaces which belonged to it.
-.IP "[\fBmeshif <netdev>\fP] \fBinterface\fP|\fBif\fP [\fBcreate\fP|\fBd=
estroy\fP]"
-A batman-adv interface without attached interfaces can be created using =
"create". The parameter "destroy" can be used to
-free all attached interfaces and remove batman-adv interface.
+.IP "[\fBmeshif <netdev>\fP] \fBinterface\fP|\fBif\fP \fBcreate\fP [\fBr=
outing_algo|ra RA_NAME\fP]"
+A batman-adv interface without attached interfaces can be created using =
"create". The parameter routing_algo
+can be used to overwrite the (default) routing algorithm.
+.IP "[\fBmeshif <netdev>\fP] \fBinterface\fP|\fBif\fP \fBdestroy\fP"
+Remove all attached interfaces and destroy the batman-adv interface.
 .br
 .IP "[\fBmeshif <netdev>\fP] \fBorig_interval\fP|\fBit\fP [\fBinterval\f=
P]"
 If no parameter is given the current originator interval setting is disp=
layed otherwise the parameter is used to set the
--=20
2.28.0
