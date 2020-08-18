Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id 24CC4248B28
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 18 Aug 2020 18:09:30 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id D6BCE80672;
	Tue, 18 Aug 2020 18:09:28 +0200 (CEST)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60082.outbound.protection.outlook.com [40.107.6.82])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id E0E1D80297
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 18 Aug 2020 16:47:09 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AvSoi2j+ApHQN/KsEL54Gfr/SyLF7JltodrmQvCEZapg85aNKGIUjE99eYFu4YUIWVZcEwmaGWipRH3LeX+De6A4AeTnF1S8X6FljmsWsEBqaYia0RXlhAlzsM88/ebWKvZnLMajM0tmpM7guynIJ5gWYB1ZRn9fu/CYA6kTRiAejOm4VACeWj61d048Ea3iLgH4kqvKwlLmsbBvQzzH8XdtV/mxvGlr1D5cGTd64cruI4ZEd/tokg4tI5GSC3VWDgeBsZ23VHKriPcPL+HT8EnoREOh5Y6vRNEbPqaINpaFRuV7h3D24stD2XADQCNaQjpX4y5K2IRnMgQf97zS/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tvtou7586v0jUV9waDoPTLxI8IHEjeGETp/Z5ja4pM8=;
 b=LSJfci8QJG1JB6eGOoC8G/F4b7i2Z2bZU5jI8xNHpuEzPUs+yV0zTX4wMWfGM34idzE7MLwucoMkKMqEnLlwYjskTkyEJ6r8Yuurc0xT9y98pzVuZQjXM5V5SAaOxyRLGy7g/bKL6OzAavZ15UgPy3HQ2xWlUCP4FIQE1fJ20j1Nqz5loZEvLn+y0Wkl/tJJYoKwu+1J6+ykxVtPdkD3RlQq3ZlTOaiFFfKCn+NmAo595xAft6/xfLrGTxloM6v++Ag8wOCwrSK72giAWWy8tn1lifrpMmdEAgaJhTeSnueQHHnAAI7YqQ+v46puItqlWnQwWv7q1oKc3ffdH5y3vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=haltian.com; dmarc=pass action=none header.from=haltian.com;
 dkim=pass header.d=haltian.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=haltian.onmicrosoft.com; s=selector2-haltian-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Tvtou7586v0jUV9waDoPTLxI8IHEjeGETp/Z5ja4pM8=;
 b=X6AlTm/WizgHNK1e0nNOufmVsBS4K4XLSddqDuS7n0jX2o5IdnepmiS+uCNmVpLH2rml3xX7MxtQtZd41Cjd3O/k9CFVtEr0KWyrLoZMJ016qLngC0EMGZdlTFvjFlNS7+YckfDBl1vpTjw+0Erh0N+PBQLA/oKKQT67PXjaXfU=
Authentication-Results: haltian.com; dkim=none (message not signed)
 header.d=none;haltian.com; dmarc=none action=none header.from=haltian.com;
Received: from VI1PR0702MB3760.eurprd07.prod.outlook.com (2603:10a6:803:9::25)
 by VI1PR07MB4301.eurprd07.prod.outlook.com (2603:10a6:802:67::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.10; Tue, 18 Aug
 2020 14:47:07 +0000
Received: from VI1PR0702MB3760.eurprd07.prod.outlook.com
 ([fe80::fc9c:b733:d178:6858]) by VI1PR0702MB3760.eurprd07.prod.outlook.com
 ([fe80::fc9c:b733:d178:6858%3]) with mapi id 15.20.3305.023; Tue, 18 Aug 2020
 14:47:07 +0000
From: Jussi Kivilinna <jussi.kivilinna@haltian.com>
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH] batman-adv: bla: use netif_rx_ni when not in interrupt context
Date: Tue, 18 Aug 2020 17:46:10 +0300
Message-Id: <20200818144610.8094-1-jussi.kivilinna@haltian.com>
X-Mailer: git-send-email 2.25.1
Content-Type: text/plain
X-ClientProxiedBy: HE1PR0301CA0019.eurprd03.prod.outlook.com
 (2603:10a6:3:76::29) To VI1PR0702MB3760.eurprd07.prod.outlook.com
 (2603:10a6:803:9::25)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from t520.lan (80.75.107.218) by HE1PR0301CA0019.eurprd03.prod.outlook.com (2603:10a6:3:76::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.15 via Frontend Transport; Tue, 18 Aug 2020 14:47:07 +0000
Received: by t520.lan (Postfix, from userid 1000)	id 1F03B600E33; Tue, 18 Aug 2020 17:47:06 +0300 (EEST)
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [80.75.107.218]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3e966057-e802-4cd6-79d9-08d843859471
X-MS-TrafficTypeDiagnostic: VI1PR07MB4301:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<VI1PR07MB43012C7652A28261153AAFC3E35C0@VI1PR07MB4301.eurprd07.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TP6v/89BIZiSXzs8ePRBnzpBMJDH6eMr6SDnPPi0Ye6VVD1y77PPt1C9I5doHoBjbnLH/VcqjMlfmEr/1TURwyohrvtvnNMgPmq/NWQS7KeEwmlkXiYsDp8QR2TTSfk974A0V6p+gHVsC7wRbI8Ny0M9EB1AreHPnQ4T7mX8szCYSeTa1Vj9pbokpFUqbv3DyHcWsemNJVGbrtB//qZ5stEYTyUCNF8VGO7Qw92os/xxxNtU0+wZ7zS2Nk155IYMj9Z05jbrLlF0Cs+CHKjLlJM2k3OeBy1hgo0OBEcSZmcJEwCZjC/Ot1u6D8a5BxU9p5qhMbdK5vBlz2Vt05x2wQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0702MB3760.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(39840400004)(346002)(136003)(376002)(42186006)(66476007)(6666004)(186003)(5660300002)(8936002)(26005)(107886003)(66556008)(2906002)(478600001)(66946007)(6266002)(36756003)(2616005)(83380400001)(86362001)(4326008)(316002)(6916009)(1076003)(44832011)(52116002)(4744005)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	jRRhXywBHNV4p3PK9SlEgPIlXnICjTDZ8SjwwsbUHCsVIMjwWLV+X3LHRl/66QpYSfVTPrAfmfwvbkZxpjrXjwUzSBT6o9Ab5ynpDduMPSWjdrze0i+uFcfr8eJbgq9KT+wklgVnL6jh0h3Qwet+5OeYA+J61XUbY0hEi5PyQezOtjBKxUMy3CjJk3DWSWn1g27xfsIQIlJNBZfvrhj3ER/qx1R9Ip/DMAUvbPKV8TISnNKILmn6vOK/ix3HzrlRYq5QTGuCnpoBnxGOirjNC4G4QgsjOszP2mhszQNsW8MJApxRtuh1gdbhDW8HYvo/WGwqYZSdyQlEpGE9ZEUTDFhyJT1on67ddRdpCayfpnuLZ4vvwi701hYT3FqflMUQdNq8ty7xKt1iKOfwouo1hp6IxM+yIt8xdpDOG160NXhDXy/rmZIRU05KL2ktCIicQq7UZumztbauMoSl98cLqLVug23prSihE4Hgi5DOrxtznDc0GAvyPq4yj1e8Yw8h27plwy7dX+KnVIZ+ykTY/jZAU2ro6yla710EAwtM/3ur7kEY6Q2Oj7q+cGtoDYJmaKfE9dU+quubJuHINvpXIueTJ5578Y1L/wOx7OogF3cz3+ME+l95zVovZ5JOKRZERiZHARmlJfJFV5QyneQKtA==
X-OriginatorOrg: haltian.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e966057-e802-4cd6-79d9-08d843859471
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0702MB3760.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2020 14:47:07.5220
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2f7c6292-67f2-4cc5-82be-5d187e289ab2
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yAWuXWpd1exDzKQirK9S8h8MTUxOSHUiamqjlhqNzMtNocsBLs9gqyqGEYHBDXudCSEj/bHPtjtgyQUpS80OSTg/phWt7wVCUIsrtM+bMOs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB4301
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1597762030;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=Tvtou7586v0jUV9waDoPTLxI8IHEjeGETp/Z5ja4pM8=;
	b=qMXkNYarQz9D+0BgvmQsi4IWk40GTn5y1BOBoJV05OHQUk/0pRB9YQ6E5edQLOUo2A1I83
	q5JRXzFw1GTsUT7dBbycj7JML/Ielo9sGZRU2S4UNTiaikrFrMx6OT+0Pt66qZr/g908xr
	prBjm7TAt7cXIAYEahRQlIQuw/8cp5M=
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1597762030; a=rsa-sha256;
	cv=pass;
	b=0pZcIhDklCaW+vr+cu+FBVir7Kd02NzCQd1dusNNgKLjZbcljDPAW9ZH37JseCDN9rPzwF
	TCuEM1ft8djwgHkcI9a7xjxvM83L9WnnaRzGIt20zwPXV939QVK/y+Q1P01Cqn7M8wbkCG
	cqfc8LrFFmHfMMuRvh3y7WIR5BGOfEU=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=haltian.onmicrosoft.com header.s=selector2-haltian-onmicrosoft-com header.b=X6AlTm/W;
	spf=neutral (diktynna.open-mesh.org: 40.107.6.82 is neither permitted nor denied by domain of jussi.kivilinna@haltian.com) smtp.mailfrom=jussi.kivilinna@haltian.com;
	arc=pass (microsoft.com:s=arcselector9901:i=1)
Content-Transfer-Encoding: quoted-printable
X-MailFrom: jussi.kivilinna@haltian.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 6ZESXNSNFROQEAV4BXUNZTFELLGRHMR5
X-Message-ID-Hash: 6ZESXNSNFROQEAV4BXUNZTFELLGRHMR5
X-Mailman-Approved-At: Tue, 18 Aug 2020 16:09:27 +0200
CC: Jussi Kivilinna <jussi.kivilinna@haltian.com>
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/6ZESXNSNFROQEAV4BXUNZTFELLGRHMR5/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

batadv_bla_send_claim() gets called from worker thread context through
batadv_bla_periodic_work(), thus netif_rx_ni needs to be used in that
case. This fixes "NOHZ: local_softirq_pending 08" log messages seen
when batman-adv is enabled.

Signed-off-by: Jussi Kivilinna <jussi.kivilinna@haltian.com>
---
 net/batman-adv/bridge_loop_avoidance.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/net/batman-adv/bridge_loop_avoidance.c b/net/batman-adv/brid=
ge_loop_avoidance.c
index 5c41cc52bc53..ab6cec3c7586 100644
--- a/net/batman-adv/bridge_loop_avoidance.c
+++ b/net/batman-adv/bridge_loop_avoidance.c
@@ -437,7 +437,10 @@ static void batadv_bla_send_claim(struct batadv_priv=
 *bat_priv, u8 *mac,
 	batadv_add_counter(bat_priv, BATADV_CNT_RX_BYTES,
 			   skb->len + ETH_HLEN);
=20
-	netif_rx(skb);
+	if (in_interrupt())
+		netif_rx(skb);
+	else
+		netif_rx_ni(skb);
 out:
 	if (primary_if)
 		batadv_hardif_put(primary_if);
--=20
2.25.1
