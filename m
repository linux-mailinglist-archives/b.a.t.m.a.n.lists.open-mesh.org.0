Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7CF430288
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 16 Oct 2021 14:13:47 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A080082482;
	Sat, 16 Oct 2021 14:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634386426;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dwu0TB2B+2eN2a5fSLD+t6psoAOW80L/c0RTBSwvbtU=;
	b=dFG26Nq6K4WAA43phHcoeHkoRiOsjYFhP3XFgLaRJhNVJNQhgzHbvJm02wFHLGRkjuQrrz
	iIamS+GRIYFN1iIkVda16t8ylv7YfcBXRORGBXGYrY+zOSAwmTjdJVCWX27GPXtLKfoI8f
	yctdqMsfEda0X1EIOuseRASvi4J0ZFo=
Date: Sat, 16 Oct 2021 13:56:26 +0300
Subject: Re: [PATCH v2 net-next] net: make use of helper
 netif_is_bridge_master()
To: Kyungrok Chung <acadx0@gmail.com>,
 Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>,
 Sven Eckelmann <sven@narfation.org>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Roopa Prabhu <roopa@nvidia.com>, Pablo Neira Ayuso <pablo@netfilter.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, Florian Westphal <fw@strlen.de>
References: <20211016050439.2592877-1-acadx0@gmail.com>
In-Reply-To: <20211016050439.2592877-1-acadx0@gmail.com>
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
X-Mailman-Approved-At: Sat, 16 Oct 2021 12:13:44 +0200
X-Mailman-Version: 3.2.1
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HRDLJ6Y2PXUM4FZ4GZM7RBM6RBQF572M/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
MIME-Version: 1.0
Message-ID: <163438642535.1238.4979707345497493282@diktynna.open-mesh.org>
From: "Nikolay Aleksandrov via B.A.T.M.A.N" <b.a.t.m.a.n@lists.open-mesh.org>
Cc: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org, Nikolay Aleksandrov <nikolay@nvidia.com>
Content-Type: multipart/mixed; boundary="===============2237591043305863380=="

--===============2237591043305863380==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============2237591043305863380==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on20629.outbound.protection.outlook.com [IPv6:2a01:111:f400:7eae::629])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 3797C811F5
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 16 Oct 2021 12:56:39 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LEGvVNFQC5B0sfCTDOAtp6pVBrAbtmV+hrFGfzHiTyQwYidYpoaCZN2QeIHjPq3kGSORaS/RlvaP9nss/vtpTuXNbd59kYKISFsT1g2N3sQyHSiYhMVwhsHb2DD0cy+BuQF+8tP/tX9Qyhv9s0mrpc/ZqHxofVsNfK1LxTutAVwXStt+jKb9yMPevZHQXccGMjllsF+x9lPkyiNRjjKXXfJUlSUVvg8Put56cF1bR/zBmIkGJIkQZcGISjN+1gtcKxc2cQ4M0cC9vPOlvbaKJSpyiGJ71sh6rA+o+86goSovaHQPLRKfSXaazY0tbGkcYvIS0FjdZeK4JjgR2LUwoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AUniiJ6OeGLbG1wAJSEpLFfBJJ74i9fSehgCxYgN2+c=;
 b=lj4npjBkxpcCsnc76EFC0RErF21uaZbb7hH9nbQ8lK9v5C3I41OKYapyL20TSgSNyQrwZ4jzbxaBmYWjKzJ9swymt99fo5DAJWcJG7ArVWr5S3YhxE5UYOSduV4lmOWN/BAJXcWtmuOCOp+ywlCOijXvzVPOj4r28UzFFHetEJIJDfLRmQqipfmIMbPFlCw5y28JLnyNW/rgss0OKAI/SkQKWp+B60cEGL4Fro97u+Q+4b1BzeNV+tZOSTJVYPDC+dfoT7jGEO9Wz0DiABojjh5TvugWWVPM/j+bnAN5jDDirYWAPVEf5htCKiaair7iU8ibQqzd13bOUD1cUkz+lg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AUniiJ6OeGLbG1wAJSEpLFfBJJ74i9fSehgCxYgN2+c=;
 b=PIz5G9by3kgNh9tIF0M/s2JcFADqltX4LJG0oWIGr8/5GDWdHrNFIUCrU5+zXW5Us/tm1HLryTOCwWC/CTYy4e4xm/hEHNy9R8nx7PgF4JzTvvH3S5oTeOXJoO7VWGpNzWbHaNv0qjA3yNVj6AigQ4OLp8y0Ar4NcrOa6ANWhEd+PoEmupckkQD+i9QLy0ngXgwOTWMIX10P+GhXRHCeR7UT2EB+FyZFGqdHnkqaP8r5dh/KnsG/NKYEpVI3rBSjOONogJlcoIZlpS8lXHuwJzKlB5B0M7eCqXCguMcLoeKEeFIBBY387j+puUvQvY6W7UEjYOihk0DITXqkmnVTRA==
Authentication-Results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=nvidia.com;
Received: from DM4PR12MB5278.namprd12.prod.outlook.com (2603:10b6:5:39e::17)
 by DM4PR12MB5167.namprd12.prod.outlook.com (2603:10b6:5:396::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4608.16; Sat, 16 Oct
 2021 10:56:36 +0000
Received: from DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::513c:d3d8:9c43:2cea]) by DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::513c:d3d8:9c43:2cea%8]) with mapi id 15.20.4608.018; Sat, 16 Oct 2021
 10:56:36 +0000
Message-ID: <badf4e55-ddeb-cfdd-4162-b8b9ae3fed04@nvidia.com>
Date: Sat, 16 Oct 2021 13:56:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.0
Subject: Re: [PATCH v2 net-next] net: make use of helper
 netif_is_bridge_master()
Content-Language: en-US
To: Kyungrok Chung <acadx0@gmail.com>,
 Marek Lindner <mareklindner@neomailbox.ch>,
 Simon Wunderlich <sw@simonwunderlich.de>, Antonio Quartulli <a@unstable.cc>,
 Sven Eckelmann <sven@narfation.org>, "David S. Miller"
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Roopa Prabhu <roopa@nvidia.com>, Pablo Neira Ayuso <pablo@netfilter.org>,
 Jozsef Kadlecsik <kadlec@netfilter.org>, Florian Westphal <fw@strlen.de>
References: <20211016050439.2592877-1-acadx0@gmail.com>
From: Nikolay Aleksandrov <nikolay@nvidia.com>
In-Reply-To: <20211016050439.2592877-1-acadx0@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: ZR0P278CA0054.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1d::23) To DM4PR12MB5278.namprd12.prod.outlook.com
 (2603:10b6:5:39e::17)
MIME-Version: 1.0
Received: from [10.21.240.28] (213.179.129.39) by ZR0P278CA0054.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:1d::23) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.22 via Frontend Transport; Sat, 16 Oct 2021 10:56:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 69fc3f0d-b4a0-4459-7940-08d990939f76
X-MS-TrafficTypeDiagnostic: DM4PR12MB5167:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM4PR12MB5167072F4BCE23C06DBEB117DFBA9@DM4PR12MB5167.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1775;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	J3kT00u8s714I0t/388AlVjTwv+54M1VfbiCB9t7UnRXcO9QnoltfgMTtJWt93jSqYWr+lwwOzidNJsqHp7AULVRJjIFDf6vYfuzX+ddXIak2+nkHfp+8qzOLt8eOU/doH3DjEBdVhEsSS4yNRL4XTQgtigZCGyTrASBxfjcbBYY2egZDn0G5XQ5NaDUp73gNnL6mEJOSL6QbL5kvf4NR8dUfKuu3yiC9gjPJ5abVJUGDKfL/2B+AsMG4ApqLh5LRQhVFqGB+f1h2qfV43H5bcn2EJq5q1ldtdiKE6HSRi0BKgll86hN2bvuDylw3TS7UW5Eo/laiQd1NPrBRP5EMVG/vdwzkfE61Fg434FhRVYXBK1HBlzEla2Qze38V3iJT1ZeR7Z5g6fXrL760UIRBCnBK94J2u6qM67PA5qFYuMOuYtMnNoXeetyVRzIRi1EwYyhyAXPyO6xoMZZDuH4IVjzWwggsdgBxQebkV8KLPjOADZaNKtuLNIVmXI5fPsU1l2bepHiMVbh38dILKMtoJ9m/kQ8BLDNpCI/1/rpTnhMz/wo9RZhSE1QXTogGiLtntQtKMR6wYA1Ebl8Sw7zComVpLhk+afjk+yt207NN7fWKUn1cvsR+tVNANEQ4wuvlvDCLFbFoO+EWwj2cDWTX3bG2w97XZQR2p+MUXlfFf8aq38kYziTRZeeS6V34O9Uj4y5lMIbB75sWKfCT0kUg1OQfL+YxGXm95J559o9P9IIwiCuezPP6dDro18FRvcwwRMNAu8y7K6dK8TNFBrWzg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR12MB5278.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(316002)(31696002)(16576012)(956004)(38100700002)(921005)(5660300002)(83380400001)(186003)(31686004)(2616005)(53546011)(8676002)(6486002)(508600001)(2906002)(7416002)(66946007)(66556008)(66476007)(86362001)(36756003)(110136005)(4326008)(8936002)(26005)(6666004)(781001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TTMxY1BEVmV2dEU1Z1dpOHRFSXU5RTU4Qyt2dXdDVVVJUXkwVHo3eXdvUm5R?=
 =?utf-8?B?UkIrYjhoUG10c3JUbFh2bTVWTm5PMjAwOFFmMjZib05OQnVFSkxPRFA1bCtE?=
 =?utf-8?B?YXY1akVrcTVVYnBrc045WW5MWlM3R2lKWXpVT29Ha1ZGZ1YzWDVLUy9VQTgx?=
 =?utf-8?B?TnV5bFRQbGdJQkR5TTlXNzlISEpnVVBvYjRFdzdXNGVSNFNaRHdsT2hqZ0hq?=
 =?utf-8?B?TXVtbmRSTGhOTHI0U1BhYlkvTitUdWFxbFpBZStoUGJiNzl3aUxMbTVubTNp?=
 =?utf-8?B?TzN4S3BWLzcydWtSOGhCNi96elp1dlFQVlhPRENNK0JyMHg2NFJkTVM5OXdh?=
 =?utf-8?B?WWNUck1XeVZwVDdobGZ5bmxvdStBdW94MEVzbTRtSDZlTG1oTDduMkRiMnpt?=
 =?utf-8?B?RHBjTmtWNlhleVpQRU5EUkF1bW9OTU5GbUFObXVMdEtHbVU5Rmw1WExIWHAz?=
 =?utf-8?B?WldjT1RDV0R2ajB0c2VHZnk4dGdja0ozcmx5UXJaQ1JlMDdVTW5JQ0ZVanhH?=
 =?utf-8?B?VVVNSDZiTHRCQXpRSWNlSGJxcERmNUdhdGNpeWpPMjNwd0pFSm9xUzZLWUsv?=
 =?utf-8?B?ZUwycjNnMkRDejNnS2g0RmNobk9ieHZZQ0dwRlgwVnN4WlhKQnFzZllqTkJ1?=
 =?utf-8?B?RlpIVXZDeVZEakpSNHFUazlTOFhtSzZiOVFmRjl0d3BsZFVXb0wyTEJ0L2hW?=
 =?utf-8?B?b01DYXhjY2FtNm1nZjNGZ1FRWENmK28xejhWMVJwSnFvdk5IVUsxRU9TYXFy?=
 =?utf-8?B?S0loL29UVFVEcFJzazMxRzA5eWZQYVZKSU16U3pkV08veGo2VnB5eFptTCtP?=
 =?utf-8?B?dWEzeisxQjNxT2dwdmZFZElXbEhkOVNHZEpaN1ZndjhvSTIxRDcvbXBDVjdD?=
 =?utf-8?B?eUdDSVc2MzlqSWZWL3F2R2FCT2ptZmt4VXc1ZGpwMEc0U0w2TGdLelZ0azNs?=
 =?utf-8?B?eTlTbWExdXAzK0N5NkVwRHBRTk5ZR3ArQ2JzK01YRWhPLzZqdzhMMUNIUGdn?=
 =?utf-8?B?UllGRjhRMEI1dlVZNzh1T2RWUU11L2dlSmlFTWFtNHZWLzhsOStTZERTQ0l0?=
 =?utf-8?B?S1RZTHE4K1FVaWVTQldrMXlkb0tlMFpMMVdpckxjZHFrWnp3bkdGM0VJRVpl?=
 =?utf-8?B?Q3Y1blJxeWZWVTcvM1JsVm5WVFZ1V2xaM21OZzlNejVsMmg1MUZGay94ZGtn?=
 =?utf-8?B?VjdQbWZuRFNiU0xsMDU5Rmw4MGpRTmhHQnNDZVNPTmp0MGEySUM4OUdaQkp6?=
 =?utf-8?B?bVA4MTEreFg1a0tQUVpqdjFHWVh5aDhTSnN6UTNlQVkxMTY4UmVnY1ovbTBD?=
 =?utf-8?B?aG1Da3hxdHBCdkxLNmZOR3dpaC80ZmF6WVVVZGJmcDRKcXdvK1RWSDB3K3p3?=
 =?utf-8?B?VG1GL1pDUUZ1TVI5VGozWmJ4dFZHODZnMEl4ZW5LVjZDZy9lNEpsVG9ZcmhF?=
 =?utf-8?B?a2xEWnJXUnFyaElaUHh3cjhXQWluL2dOTk83SHF5VWFiK2hLY29uVVloeWpw?=
 =?utf-8?B?WkhlOFpTYWEzSkRlYUN3dXVFUmhleWdnRXlHS1JYWFgzSVE5bkZOZG1ZQTZ5?=
 =?utf-8?B?SFFFMDVXbzRyL1FNeG1FeXo1NWJHekFBV3BYRDBDTjRhTS9RWHdUUW9ZWS9z?=
 =?utf-8?B?dUJlZ2cwalZtblMzbW92YjZhcWU1RHJZZFQxbFc1ZVJDb1krRGx4MVBORVpX?=
 =?utf-8?B?V09QTFJVT2dsbE5lVmVYbk1qaTJwaUdaTEJUdThvREtMRVhGcGU3V3VMUWt1?=
 =?utf-8?Q?IAsrNbg4vJFJddryuxK3+JhB9uwoOD6IYR9PdZx?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69fc3f0d-b4a0-4459-7940-08d990939f76
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5278.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Oct 2021 10:56:36.2705
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e68Lp+naZFLSw7fdEhH/nVAqoQNSPbW0pfX7nyklLqOsZB+Ez47AiWvE5QVjf1jzSdOKme8HJHw4tDLSt3uz7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5167
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1634381799;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=AUniiJ6OeGLbG1wAJSEpLFfBJJ74i9fSehgCxYgN2+c=;
	b=VdI37FBB0c+atXzzsFD8SJXGDyCqaUFVDf1QgUHQvpoC/RbzzkDUp1T1y0T34cnTQfBYrk
	N8Vd4/2iLhpNWX1Miu7uBy7tjZ6tbqTlOKYASC7OZ8Nr6hWAQZnne8BpaWE7LxKuMwfAAi
	OCAB6ceNUvrVfnQD1x3JeA7jVlAbvXE=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=PIz5G9by;
	dmarc=pass (policy=quarantine) header.from=nvidia.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (diktynna.open-mesh.org: domain of nikolay@nvidia.com designates 2a01:111:f400:7eae::629 as permitted sender) smtp.mailfrom=nikolay@nvidia.com
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1634381799; a=rsa-sha256;
	cv=pass;
	b=bS1aBkH4//GWuUGxH45jn7/EotNWZHaI8zdy0UdyeM8Og5sQ6hBy6lVuOReb1K5KOqV1c0
	Zib/aFL50q/Uh3SboD+NewUy/VQt3x7/WsIm1UDbMHF0jLo8rt6fkKz3yp1Lh7aUBDzMHQ
	Yb5EQuljioH3p/Z9henf54vc1NghUdI=
X-MailFrom: nikolay@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: HRDLJ6Y2PXUM4FZ4GZM7RBM6RBQF572M
X-Message-ID-Hash: HRDLJ6Y2PXUM4FZ4GZM7RBM6RBQF572M
X-Mailman-Approved-At: Sat, 16 Oct 2021 12:13:44 +0200
CC: b.a.t.m.a.n@lists.open-mesh.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bridge@lists.linux-foundation.org, netfilter-devel@vger.kernel.org, coreteam@netfilter.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/HRDLJ6Y2PXUM4FZ4GZM7RBM6RBQF572M/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 16/10/2021 08:04, Kyungrok Chung wrote:
> Make use of netdev helper functions to improve code readability.
> Replace 'dev->priv_flags & IFF_EBRIDGE' with netif_is_bridge_master(dev).
> 
> Signed-off-by: Kyungrok Chung <acadx0@gmail.com>
> ---
> 
> v1->v2:
>   - Apply fixes to batman-adv, core too.
> 
>  net/batman-adv/multicast.c      | 2 +-
>  net/bridge/br.c                 | 4 ++--
>  net/bridge/br_fdb.c             | 6 +++---
>  net/bridge/br_if.c              | 2 +-
>  net/bridge/br_ioctl.c           | 2 +-
>  net/bridge/br_mdb.c             | 4 ++--
>  net/bridge/br_netfilter_hooks.c | 2 +-
>  net/bridge/br_netlink.c         | 4 ++--
>  net/core/rtnetlink.c            | 2 +-
>  9 files changed, 14 insertions(+), 14 deletions(-)
> 
[snip]
>  	err = br_afspec(br, p, afspec, RTM_DELLINK, &changed, NULL);
> diff --git a/net/core/rtnetlink.c b/net/core/rtnetlink.c
> index 2dc1b209ba91..d3676666a529 100644
> --- a/net/core/rtnetlink.c
> +++ b/net/core/rtnetlink.c
> @@ -4384,7 +4384,7 @@ static int rtnl_fdb_dump(struct sk_buff *skb, struct netlink_callback *cb)
>  					continue;
>  
>  				if (br_dev != netdev_master_upper_dev_get(dev) &&
> -				    !(dev->priv_flags & IFF_EBRIDGE))
> +				    netif_is_bridge_master(dev))
>  					continue;
>  				cops = ops;
>  			}
> 

This looks wrong, the original check is if it's _not_ a bridge master.
--===============2237591043305863380==--
