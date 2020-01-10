Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB36136CD5
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri, 10 Jan 2020 13:15:15 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id CCC90805ED;
	Fri, 10 Jan 2020 13:15:07 +0100 (CET)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05olkn20811.outbound.protection.outlook.com
 [IPv6:2a01:111:f400:7e1b::811])
 by open-mesh.org (Postfix) with ESMTPS id 9394C8009F
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 10 Jan 2020 13:07:38 +0100 (CET)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZP78+jUubKc/3zAPJaIYVw6iEKJQJIK7HxMHNKMGw/FJsBaHpMVEDOl53aAI8Gt3rJmYB360j/HRksomqzjg/JPIWr0sq9kTdHlG5AKIEgFa3OZlxSSQCPaZEcpcrHXHj70Oe5396SQ0RqYAuh2v5WakwaPjWvxB8lIYgXLVlcnyG4aLoaiowDImxifdyGZY0MMmj3G76CxiZfukh89hn4Geted4k5I5QlFXhPp6jhs1HS2KcFPrpTRIwD3l5U5VPi0bKloV5iODV/Oo0rkSwNi8vMFkaTu+tDK4csW+qnM301NYJzRXA+PCROCHEMS0xuK3EN6zafdnwGR1MKrdvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tmS/ER+N1TQBR4L0Mu6ODpe9G5H7Rdqv3euBkG8IUTw=;
 b=A5lrKv9MRMEC9IisjrNrt2aNHt/HbsqXWfNoy01+3ibAOCgnJYhXpH0G5K/y/73Ct15CLmAn7fSCnzdV+n9F3h2exUh/7jDuvlMW4TmTIPzUJD52YheWskrVxfGpAR5HY2bb8hGmBZxHn0ojHFtNx9RuZbxdNg1L15nZ+gtrgwVCQnwe5FgjoIH//Rsf1e7s433n1OAv1EDgEcER0HTbncI77C78cB6g6oxI6rGLjFSEY+JUlFIOTDjDdF3h+DoAVRyske57cbmuyJke3284zYhtkC+g+/9t8p98N9J4/x0Bubl5NcyflMsm3/RVf/Yzbyap8gk6BVxhwukxOKt/zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tmS/ER+N1TQBR4L0Mu6ODpe9G5H7Rdqv3euBkG8IUTw=;
 b=ZMcJH+/2/hiK0yGefcUt2zQ8csppjSO3fhjHBnWxxE6BH6ATyZrDTfMlWHMCbE8lTO0YnQ9V9y/d7dOf8hYEsg9uOfNClZ9Tz+PZbV6hhMf8pYrCWEEP5J0a9iEeOtyzmJuiNaKMJyYLuflav07pnudfJLu0x4MMMXCEdunBA9qLsxRihbo0lJFIGEeC2FwE22qDYsQDU1gaj//rq5aWvnL7obhIS/8FnRSzzpyCvI9fwqrqF7Bs1GCDb6XdRSGW9/zFPfHeYNyvmGmgX++I3Bt56V9uvYMtj5RV9s5107e2qU3BtDaTaaGbHEZY9icT0CuJWeTRHa/AiJFdHOS+mA==
Received: from AM6EUR05FT020.eop-eur05.prod.protection.outlook.com
 (10.233.240.52) by AM6EUR05HT215.eop-eur05.prod.protection.outlook.com
 (10.233.241.56) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.9; Fri, 10 Jan
 2020 12:07:19 +0000
Received: from AM7PR07MB6263.eurprd07.prod.outlook.com (10.233.240.52) by
 AM6EUR05FT020.mail.protection.outlook.com (10.233.241.105) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9 via Frontend Transport; Fri, 10 Jan 2020 12:07:18 +0000
Received: from AM7PR07MB6263.eurprd07.prod.outlook.com
 ([fe80::a080:af8:16d9:f3c4]) by AM7PR07MB6263.eurprd07.prod.outlook.com
 ([fe80::a080:af8:16d9:f3c4%3]) with mapi id 15.20.2644.010; Fri, 10 Jan 2020
 12:07:18 +0000
From: Julian Schlenker <schlenkerjulian@outlook.com>
To: "b.a.t.m.a.n@lists.open-mesh.org" <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Extracting topology information from batman adv
Thread-Topic: Extracting topology information from batman adv
Thread-Index: AdXHphxONFvwxQv5RuSX2/y3yiD59Q==
Date: Fri, 10 Jan 2020 12:07:18 +0000
Message-ID: <AM7PR07MB62635634B9432C2F27D81433AA380@AM7PR07MB6263.eurprd07.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:6BEB74FC3480182ACB086A67B6590E23FA55E098848A45A709DEECDA0E3EE70A;
 UpperCasedChecksum:49A13304217CF106427B2650716AFD0AEFBE60E1363783A8CA7DDBC7B621BCA2;
 SizeAsReceived:6901; Count:42
x-tmn: [fv3rkfOsR2fi0GwTfWl0eSr5UaPiqhIW1BpA6JuA8srDKuBpNEn1jGPuCAU4i10i]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 391912a5-9f1d-40df-d4e2-08d795c5a3dc
x-ms-traffictypediagnostic: AM6EUR05HT215:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WFF30OGa9H3mor2UxdZ8VdBPRYeMW9k+R7pRYwrSR75MH1DZy0JwkZ+ZKnzqI73vk7oVHCtmiqWc+wbhD7rZa+XHnTD71ypGeHAChun8YFYIjLcjXa93Wa3FkO957javcw7sets9jjoskbSdLCUZuOz324trl+oEZS0FP1ehdryt8ArnVx+T/1zGyG8Q5na9
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 391912a5-9f1d-40df-d4e2-08d795c5a3dc
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2020 12:07:18.5274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6EUR05HT215
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1578658064;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=tmS/ER+N1TQBR4L0Mu6ODpe9G5H7Rdqv3euBkG8IUTw=;
 b=M6LI5BngJ9c5nzPMabzdkeuQN4aI7LMEnKCctuJdxhWWwZez4e1TzC3p0eOlQA02EPsVPg
 RD8dDcSkeSC8aKS9qDoJLawXSpbeOX9/k/J6gTS+u1HE97qqneDcMw1ZXtwnxPnqAHAmn4
 Npu+uAVpuMX92p6pacHXA2/p+TI9AtA=
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1578658064; a=rsa-sha256; cv=pass;
 b=K/xiYzQXviz9B0+xUAkBf8ugXYzn/RShcf6sVsoHcuNn0+ZzTkwLVgP6P5srsIJCpEwXz3
 1Pfnu29rwkYKV85u7n5lz0ijKR1/EfZw8NXMUgjrXhPW3RlE+xQCcOh4z9uq6K83CnHk1g
 4MF6CXu3sthZC+2B2p59XZEBrPFquXY=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=outlook.com header.s=selector1 header.b=ZMcJH+/2;
 spf=pass (open-mesh.org: domain of schlenkerjulian@outlook.com designates
 2a01:111:f400:7e1b::811 as permitted sender)
 smtp.mailfrom=schlenkerjulian@outlook.com; 
 arc=pass (i=1)
X-Mailman-Approved-At: Fri, 10 Jan 2020 13:15:02 +0100
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
List-Unsubscribe: <https://lists.open-mesh.org/mm/options/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=unsubscribe>
List-Archive: <http://lists.open-mesh.org/pipermail/b.a.t.m.a.n/>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Subscribe: <https://lists.open-mesh.org/mm/listinfo/b.a.t.m.a.n>,
 <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=subscribe>
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hello there,

for a project I have to start different processes on different nodes within=
 an ad-hoc network. Besides CPU load and other factors I would like to use =
the network information in my decision making. For example having a hop cou=
nt would be great.

I did have a look into the alfred man page, especially the "batadv-vis -f j=
sondoc" command. This one seems to do the job although I am not sure what t=
he "metric" stands for exactly.

Or is maybe using batman, not batman adv a better fit, as I do not rely on =
any additional Layer3 services? In addition the remapping of mac to ip both=
ers me a bit.

Thanks in advance!

Best regards
Julian
