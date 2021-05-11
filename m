Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id A725A37A579
	for <lists+b.a.t.m.a.n@lfdr.de>; Tue, 11 May 2021 13:09:29 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id B03B88306C;
	Tue, 11 May 2021 13:09:27 +0200 (CEST)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2043.outbound.protection.outlook.com [40.107.220.43])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id B35C1805E4
	for <b.a.t.m.a.n@lists.open-mesh.org>; Tue, 11 May 2021 11:33:17 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GsNVygaDpoyCjfxcHnOdL4XnNgfLLsW2qO4XYHO9Wa2MpY4sYkZhQLd/HH67o9jgtywNZ+XyxTLPlvlfe3bvpQcRXK7JL4oYi0RqQRjZSiohwkev/xnaNTzEReprxbeZszpSTyta2ykGLLVPscx59T92VLR/aYGXZgEzlZyH2HGf0FfX7plR7KSrug1WBOdeqr2pTEnD7XWro+F2JiaJYKoFp8CZEOmTWiCaUpR1AZtFg61rHR62Q1gpmUu28GzOYrDJCijVtfScEYMiR+lIDfwcM7AR1aKmnpbZ+XyOBzYZwg3HOSzepbGgfmgH25GfYMAxYnXBaTPjHrEIsaYxCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tp9c8bteA9/QpO3pIOG/3bTEwmbE25ZhMXj+4SiAIvs=;
 b=ibQS1lej9TP8UKwjhEpL4MICtLQhMBrKdfy3IEzfp5e8zR496DOXc0kNMgrrESjA5UaOhFyBYJQ1XcBXV5IMOC28oq7jOf32wH7Qh+/OpB6sGxBlpSTT6H7IEi3EBwXnYjjwEy9eyDZmhOsV4vQPyKA80a1PPG44KuEBLI4J/4WKgZqXek9s23WPB3COFUrCF6iQZo37WOSblrSkWf53dSfJ6KjfVCumsx60PfwdBS9S/b0QWESRmCBT29A8Bj7GrgHgUrAXf5k5DgMrOgfMAmVRPMkTSas35ZVCFKHSb759e2xvYxTRJJCXa5UpnHm99KxxLQ5GQvmsmVLwf1a9xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tp9c8bteA9/QpO3pIOG/3bTEwmbE25ZhMXj+4SiAIvs=;
 b=hMVTC5Lw/aeMrtkMVlgms07lFnQqVXaDQyIbpT591k8ZodbYobUtxqrbpb0HyEAfeqz2YnnGysFnVrG9jDlI1gXAnauf9vT3FjQxFFq1AmfJMEtFlclZBCEL9JtVz4Iv5BD7ErG5YMyk5Z/RjV830/WYTn/y+4msufXRn5ZJnztfUnEPv7EsyJyAovGj3W6OO2jPbqSW/Yzbux8Rk+H+c/GgES3EjH9D4UjLKFDbyMTdQr+HMdQvfLGm2VMM2ubFhdxCmJoKCe8AEjhl1aFN+OTX6udcv6Bl2QhGcrAxnws4NpC6k3+0YKnD+Sstb+21UvK062nkzceLCBFpeRIl+g==
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nvidia.com;
Received: from DM4PR12MB5278.namprd12.prod.outlook.com (2603:10b6:5:39e::17)
 by DM4PR12MB5167.namprd12.prod.outlook.com (2603:10b6:5:396::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25; Tue, 11 May
 2021 09:33:15 +0000
Received: from DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::d556:5155:7243:5f0f]) by DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::d556:5155:7243:5f0f%6]) with mapi id 15.20.4108.031; Tue, 11 May 2021
 09:33:15 +0000
Subject: Re: [net-next v2 09/11] net: bridge: mcast: split multicast router
 state for IPv4 and IPv6
From: Nikolay Aleksandrov <nikolay@nvidia.com>
To: =?UTF-8?Q?Linus_L=c3=bcssing?= <linus.luessing@c0d3.blue>,
 netdev@vger.kernel.org
References: <20210509194509.10849-1-linus.luessing@c0d3.blue>
 <20210509194509.10849-10-linus.luessing@c0d3.blue>
 <f2f1c811-0502-bde4-8ece-e47b3e30dc66@nvidia.com>
Message-ID: <e784e0e6-8b30-0862-e417-a6ff94790b8e@nvidia.com>
Date: Tue, 11 May 2021 12:33:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <f2f1c811-0502-bde4-8ece-e47b3e30dc66@nvidia.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
X-Originating-IP: [213.179.129.39]
X-ClientProxiedBy: ZR0P278CA0024.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1c::11) To DM4PR12MB5278.namprd12.prod.outlook.com
 (2603:10b6:5:39e::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.21.241.170] (213.179.129.39) by ZR0P278CA0024.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:1c::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.25 via Frontend Transport; Tue, 11 May 2021 09:33:13 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1befe44d-62f7-4b48-da23-08d9145fcda2
X-MS-TrafficTypeDiagnostic: DM4PR12MB5167:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM4PR12MB5167B33156EBDADD9328AD51DF539@DM4PR12MB5167.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	naMnUleR5s8QGTzyvTFTtPwZqrdbxj4CVXO6BHrLCXsssrcC/T89WfCnu6IuH+xYzKzonF++M7IvUX6+rW0NATg8TF6LRm+elp7r2veZyNNe3OoKqdmsCQ7yyTwjiKHkqRiRkrHr/5lm7cyKUmxGesegqsNeUISJL+suKKNPHNCQwu/LpMo0DSn4FeM67IonNL5li94jsiD4tyXN56sEC69Fu1S30SHzSYcRn74mNILfm4tRLfm/WXxBqRqCKQxGwGRpGlLQT8rtGcRPmO7tmOK8JOm3qPJPorYfvm5PpLxNFYwF2NngVP8OGVql3BJ32quNw/Php5svyL+k1pOUE/KtSGD734TQ06vT6aP6hu+Wmt8fuhMzcywHKVVxaGbWXncE+Ez1ck4ZpOY/g0cFOIPWPQI/Rd3nkezuI7bz1KaffvPr/I/xDoea1IaDsuI7GZCPGFaIbWwTEYxekr67ybdsnC4rDmTRb70YtWrWSjO7lPKXd34GqcB7+9h712n6xwb0ZYYu2bTkpoMi5juH1IuAGipyRZrTIZnZVHDmvKr19M6TVEqtfHAyzW4xLqXm5y81wGd+52j4AnUKOg9HBgJ7I5ZSU+ly+JYnuYjdtxYvejfoMsMJXa63nt1yNUvRvldG5Wn/6pUcL4d0796eWL/ZESQcEHBTtZF8KfPvr0sLEhhEP8QqDgQqNGwvd0ol
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR12MB5278.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(39860400002)(376002)(136003)(346002)(31696002)(36756003)(86362001)(66574015)(38100700002)(83380400001)(6666004)(66476007)(66946007)(66556008)(2616005)(2906002)(4326008)(478600001)(316002)(16576012)(54906003)(6486002)(8676002)(956004)(16526019)(186003)(26005)(8936002)(53546011)(5660300002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?ZndLRkhFcHVZVk1YbjQ2cmFmMXlodVVCQncrbVd1Ym1TcXJnVXFYUnMzT3dP?=
 =?utf-8?B?c0RKdUN4RVJLMTRMMERIc3d2NUxwbmxOWGFmbGNoTnczT2c2SnN2c3JBcmVz?=
 =?utf-8?B?eCttalFvdDA0eEx5UjdnN0trWjlPMDhjQ3FmdmZYOTM3UGgzMFc0Unk1azcw?=
 =?utf-8?B?aTZTdTI5MnYwakNJdWZDTUM3a2M1dk1tUndMTkJtYUF2TUNIRE9xK1dRcEN6?=
 =?utf-8?B?Y3JzMHNTRkFGZHVlL3JPSEFldExuQXpISGZ3VVVEWHdHYmVrcnR6cm40a2ZK?=
 =?utf-8?B?Mnp2L2dVTEUyNkVKUFFpdHVha0VjOFBJcDJFL1hHNU1EN2Rac1NCR01uQ1Bl?=
 =?utf-8?B?MmNGaTFNMEZhc2dPKzhNU0VkVU5GTGlab2p3RnFUeVlaNHhQRGoyeUFmbUcv?=
 =?utf-8?B?UjFaZ0taMUVjUDNTWnE1dUF3Uk1UZzY5ZXNZS2QrdkVrc2hwVGhNUFlrZHR3?=
 =?utf-8?B?UEdFN3ZjeVBVa2JMeHJVTEZKWTdqaWVwREdzVTFXcnhWYVFUcDRjYWtZbGIw?=
 =?utf-8?B?MWRlaFhMblh3dHdibHBKcFB5dklLREwwOGxrNUhKaGhBRWtXS1N0NDVGMzM4?=
 =?utf-8?B?ZTFnNm05a1hGcm51SmRPaTFNdm5wZ01lOFV5dnhlUHFZR2lXZ01icmJ4ZFEr?=
 =?utf-8?B?UVFSWEJkSjdiVFNWUm92TFRtTWNUeitsWGVIbWttZU16cDF1MWN3cjRsT1lH?=
 =?utf-8?B?ZWlwZGRJaEM2bTlzY0FmelpEektLbDNLM0Y5TmRHSDdYSDN4elF3OURPSEFp?=
 =?utf-8?B?VVBBcGpvNzh2R25OcHBZbFh2TGQwMXd0WWkzcGdmM0lxWVZTNjN5SXlRcGJS?=
 =?utf-8?B?ZmVyOFpjOC9QVjBlcmZORWVONUdrU2pRUmpQaUN4TjZ6R1JBMlZRTTM4Vllx?=
 =?utf-8?B?TjIzM08yQXhrOE95bmlGYnVhV2xObVF3OTlSeWFPUjg4RUxjTlZBRkU1TTIz?=
 =?utf-8?B?a1Fkd2VZRjJSaTNESlROZTYyRXpTM04xWkxzcnRjVW1qUTVyZCtORm5ocW1I?=
 =?utf-8?B?OS82TkI4ajhIM2IydVhma0FHaGVSRTRseVluVkdhVTgxcDVnaFUxSHZjZ1Js?=
 =?utf-8?B?N2Nqc2dGSHZqVFFsZnhmaitOOTZiNkVGSVZ3QnRib2JDTElwOXRTNzB5UXpp?=
 =?utf-8?B?dnI0S0Q2RHFSYkRsbjJZcGlRN2F3QmV6cW9wUHJOS2kyMG1oME5KNTdHdVNw?=
 =?utf-8?B?SlFZOWpuMnJNeVd2K25WZ0ZnczRPS1gxb3paQjNVRTZFTTAvUXhvSlRLaFBi?=
 =?utf-8?B?MVo4djZJSUMyb2pmZW5HWUprTk1nWld5elYrQ1hJU1ZkMzdvbnI1OW01bWNq?=
 =?utf-8?B?bGgrVmJiTWNCZVF1aVFDM00zMzVXUmtpRFd4ZzB5RVo2QzVHVXh5Q2U2Y3lC?=
 =?utf-8?B?dldId2JOTXYxY05RSmloYno5VTNuY014bjlBTjJVUzlRTXNrdzBqKyt0MmE1?=
 =?utf-8?B?T2xwcUNpY3pTclcwTWVaK2Z5K1dNMFByZmJuYmhtS0xzeDhsY29KOUIyMG45?=
 =?utf-8?B?eEttVkZOZ1NaL0tSMFN4bkJIZmFOMkg2cE9CUHJaRXBYMFR4OTFwVU1mVXJI?=
 =?utf-8?B?NmFSTjlzc28vais0NkJIYmhVaExHZitMMlVRbVV2S0pvZ0pIdlcwY0h2V3ZD?=
 =?utf-8?B?Rld0TTNham9odzRlMUU5OUp6cTNYUGV1NGpRajlkM3RkcTZEU3Z0YlZidEFL?=
 =?utf-8?B?VXFhclRoWEUyZURpUGZ3M2Zabk1EMGoyZHY0SWpIcEdCbEZndUEvazFjdmdG?=
 =?utf-8?Q?UQOjT153knFHixhC4qTjB497Jt6DcFzIDRSfBim?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1befe44d-62f7-4b48-da23-08d9145fcda2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5278.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2021 09:33:15.4763
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3V4aBjaH25n6WsCJnl45CMx/pomzTFQDNfgrwAyWQH/jNuJ7ZFHgEepTbZzRTmQ7MLvYZnWuUJmqUUL9acr3Ow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5167
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1620725598; a=rsa-sha256;
	cv=pass;
	b=gDW/Yfq/HuCIYEO6p/q6WK97CjzZnGbLe2R1CK/Icsywa5nnm/77UyyCsRiswQqnlL2yR3
	AZiLm8L8GOKmT6SHMlVHzRdx8BbHkQrMjdQKTY75Q5b3O0/Yupp3edftnRnhpzzW0K1yNh
	UygzyaxHkKs2y6gfC4+WvErD6qZC1yc=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=hMVTC5Lw;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (diktynna.open-mesh.org: domain of nikolay@nvidia.com designates 40.107.220.43 as permitted sender) smtp.mailfrom=nikolay@nvidia.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1620725598;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=tp9c8bteA9/QpO3pIOG/3bTEwmbE25ZhMXj+4SiAIvs=;
	b=hc91bmNjwDQ2AwV14GyUTQaVSgk6z2tcA7PK/TWVQuKSMDGMQMoYpdag6iqFKghsiSNEvQ
	Ji95iAelI77cMmMZaCUw67omTjfxX0NCKBFZ3G4v1+hebKWusY8zhimNOtdKABHiwu8wW2
	wBVBqtqqOp4Hfrnop/WAfgT9A2q1uIU=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: nikolay@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: 5RIUFQX4QHX3ISFBWAJHLZEKVFCFBNZW
X-Message-ID-Hash: 5RIUFQX4QHX3ISFBWAJHLZEKVFCFBNZW
X-Mailman-Approved-At: Tue, 11 May 2021 11:08:35 +0200
CC: Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/5RIUFQX4QHX3ISFBWAJHLZEKVFCFBNZW/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 11/05/2021 12:29, Nikolay Aleksandrov wrote:
> On 09/05/2021 22:45, Linus L=C3=BCssing wrote:
>> A multicast router for IPv4 does not imply that the same host also is =
a
>> multicast router for IPv6 and vice versa.
>>
>> To reduce multicast traffic when a host is only a multicast router for
>> one of these two protocol families, keep router state for IPv4 and IPv=
6
>> separately. Similar to how querier state is kept separately.
>>
>> For backwards compatibility for netlink and switchdev notifications
>> these two will still only notify if a port switched from either no
>> IPv4/IPv6 multicast router to any IPv4/IPv6 multicast router or the
>> other way round. However a full netlink MDB router dump will now also
>> include a multicast router timeout for both IPv4 and IPv6.
>>
>> Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
>> ---
>>  net/bridge/br_forward.c   |   8 ++
>>  net/bridge/br_mdb.c       |  10 ++
>>  net/bridge/br_multicast.c | 197 ++++++++++++++++++++++++++++++++++---=
-
>>  net/bridge/br_private.h   |   6 +-
>>  4 files changed, 201 insertions(+), 20 deletions(-)
[snip]
>> +#else
>> +static inline void br_ip6_multicast_add_router(struct net_bridge *br,
>> +					       struct net_bridge_port *port)
>> +{
>> +}
>=20
> Actually that goes for multicast_add_router, too.
>=20

err, my bad - multicast_add_router is fine as is, sorry about that

> I'm saying all this because soon I'll be adding per-vlan multicast rout=
er support
> and these will be reusable there without any modification if they can t=
ake any list.
> Also it'll be easier to maintain one set of functions instead of multip=
le identical ones.
>=20
