Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEB736A8A6
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 25 Apr 2021 19:48:00 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id EDDCD83316;
	Sun, 25 Apr 2021 19:47:55 +0200 (CEST)
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-eopbgr770047.outbound.protection.outlook.com [40.107.77.47])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 80FA9801CB
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 25 Apr 2021 19:43:09 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WrJGct4FZOT24DZgAyz5fosgmLEMMp5oZrER1KZ+Hlwp7bonDzbkEOHWmqS/rcGLFLGXuzW20y5CELAwk1Jm3YRII+MOOqecS3qztI5xQB1Yr2KdYFZbUxMl/aEkC3mithA+uFpRmGMKmfaGj5KpSS/aRnewKMGZNast6yIHLF0Iile3pi6xTcogQGlCGvgdtDcGRYNF/Uj0FQdiTHtVihBnk+9Mo83481+8IR0yOHO9f2hi5LjUZvbz0kXkpmrUEIt16oKUKMGcQz3fFKiP93cS8EeIVQwtNHVD5UVjfDkSHJ1GrPLPSEx3nMw5KtIpeXP5m+m6zDWQkgNgmpYL1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eRfisbajn2f4l6T+Q/i356a279Q1swZtvG3NUX9T03g=;
 b=TGjjk2oh+5eT5EM5elEFq4o/hyxU/q7ywhLvsJnhPDAoJmdqThBugEsd0Td/eLz3RQF5MCstunL2OL2Z8sh4yhFDLVw3xISXqS2CI8NxqUppOv+0CeaB8IQjfIxa8ROcZ2hggRMbOq0R6SPK09oxQTFHmOS2SjFqYF3ID9slFrHBtKqw3+t6+kEC7q/brsKrmUcKpN4K/fAFBdUiXtTWBcAlNXaJGQxcwBayUNbHoWlsByzsakF/voIfpYkofaPNRNTRIUSt6JTfNs7uAwlQm4XNqiIL1coWezk7x07A4zmHRq8zwMJRAlxUi/o2VsYeEoNnUUjybRNDunv8d85hvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eRfisbajn2f4l6T+Q/i356a279Q1swZtvG3NUX9T03g=;
 b=ZtahNH1a6C9MicoeVBTDRDA0ujkws0CsFp8io7y4OdACbYwuAbXMFxUuYD+1OVlHNFIeY9QHprX2HPe1WIqPAgHg4nU2a86eDaEWDConYDIGcpKnvj6FSfHRXTinKWm8elnd4UnhU1mH41KCbJR9wfF/QwQXzK6g5iAUJdyIzcRv6/Fb0W4k6UWu7nsjDCdUCoU5rrxo8cN6fO0QuFHq9wyVaUEkvmU5NNZKUgdAH7YWIHNWchJiwBNgDVUT2HBGqfiyJu2EH1Zdyj9Ty8qKGPz/Se6tc3fldwZgv8+mHtMkTKpoCV2W9ogvvV1uXHLK6U10S5YxcKWDyO9zXl4LMw==
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none header.from=nvidia.com;
Received: from DM4PR12MB5278.namprd12.prod.outlook.com (2603:10b6:5:39e::17)
 by DM4PR12MB5278.namprd12.prod.outlook.com (2603:10b6:5:39e::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.23; Sun, 25 Apr
 2021 17:43:07 +0000
Received: from DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::a145:fd5b:8d6f:20e6]) by DM4PR12MB5278.namprd12.prod.outlook.com
 ([fe80::a145:fd5b:8d6f:20e6%2]) with mapi id 15.20.4065.025; Sun, 25 Apr 2021
 17:43:07 +0000
Subject: Re: [PATCH net-next 1/2] net: bridge: mcast: split multicast router
 state for IPv4 and IPv6
To: =?UTF-8?Q?Linus_L=c3=bcssing?= <linus.luessing@c0d3.blue>,
 netdev@vger.kernel.org
References: <20210425160050.8732-1-linus.luessing@c0d3.blue>
 <20210425160050.8732-2-linus.luessing@c0d3.blue>
From: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <db1a3320-85b2-2aa0-7b3c-7255d68eb1d0@nvidia.com>
Date: Sun, 25 Apr 2021 20:42:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
In-Reply-To: <20210425160050.8732-2-linus.luessing@c0d3.blue>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
X-Originating-IP: [213.179.129.39]
X-ClientProxiedBy: ZR0P278CA0075.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:22::8) To DM4PR12MB5278.namprd12.prod.outlook.com
 (2603:10b6:5:39e::17)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.21.240.78] (213.179.129.39) by ZR0P278CA0075.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:22::8) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.22 via Frontend Transport; Sun, 25 Apr 2021 17:43:04 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7e42dec4-e29c-4741-71ee-08d9081195ac
X-MS-TrafficTypeDiagnostic: DM4PR12MB5278:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM4PR12MB5278D50EC5CFD99F45979643DF439@DM4PR12MB5278.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	PkXiyEhaBzHb5lT0YJ1jTYqS9H9+IDnQ2vVAMD2K5XyTZtOxJaOUIls29JZbWqEwqYqnKAroaVbCJFKIXza3OlpDRebZXzxaDatOiWaI4xevWX4twwMa4PzcZ2pgVDOorawQIuVc0kd4SdrYxmSf7RSn2AVxVut+4re+zPL7hl9JFyoIb+nmDQ3LGu8b5C45gJILNVkuWkOw5VlD1j7pfuR82HfCQFrSPrsLkWXTgi9p/Oq/2hGN0blyvXJg6S2pgJ775Oyz/TDHNgbE3ycZd3B2x7wcvWmL/w9JyUGwYLy/Tp0T87wiF5+txUWK0YGsYvRSoh0qtEGC/nGa5DKrWYKS7pRXcxkl6s84Al9ANB3Hpc/3My8OK66ZFkF9MdlYIVcrmn/f51YonJGxgMYzNbsF49GXosDDcZId0OJvc07+miQZpbHWwKKOsGavIPOUnGlW0TqVIf2FAkQ+UgJnZvtAWwlg0T5r91/8BVKVbDQRPR0Q6qrsodRH2oI1RCH9Z9m3VGARCX7fUh13PBTSGbKtvxbrSnV1xo/2p34BlYG+uM8UkZsn4pIIcVEwcw1ThnCXxDlwOV6U84gWqXbHWFBxDxKS9oqiZDd271xUkmOO9iUQoQxggiULgbFrT/l5j0Qxc90SKDb+giIijpLcGH+4hZDu4e021xnqdX3afqdYy9VWOrBzN1bs0hPhGyB7
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM4PR12MB5278.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(346002)(366004)(396003)(39860400002)(376002)(26005)(66556008)(66476007)(66574015)(316002)(31686004)(86362001)(8676002)(54906003)(2616005)(956004)(6486002)(6666004)(16576012)(16526019)(186003)(66946007)(8936002)(2906002)(31696002)(38100700002)(83380400001)(5660300002)(36756003)(53546011)(30864003)(478600001)(4326008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?utf-8?B?OThxZ3hOM1VSem50ZFBITmYzZnRCR3hKS1lSTnBPWGxhUHg4MW9MWDNoZ0ZS?=
 =?utf-8?B?QUZZa0hmY00wVUJmbnNRODgvbWlVdVlmVjBGRWdNYlZlUXpSU2paSUo3aEdZ?=
 =?utf-8?B?cUluK0JMNk9HRWczazlUbVFHaHk3R3RRemdpb0pSQmIwbjNQQ3h0cnZpZzQx?=
 =?utf-8?B?YTdET1V5NjhaMWNGQ29jUW9JR29VeW9KWkFYcEdsUWIrRkJ0S2NKM0ViRmlH?=
 =?utf-8?B?UUdGV2NyNW9MVnFUZTA5TkYwZG5sd2hSMEZIc2VySHV4aHlpL0JsUXhBUjFz?=
 =?utf-8?B?WkREUWVERzkwSDVBdUlVZzhQamE3bUdVRXQyZjB1a2NSNGwrZ1luamdMblVh?=
 =?utf-8?B?azFhampvM0M2MWJpazRPK0lnTXJtN09uZi9MTHU4M3VjN3c1UzFkcWlzUW1p?=
 =?utf-8?B?eWRuM2sra1JKaVhTQjk2Z1BWVE1FbElxWkNHWTE5dFYzMFdVd3h6VVRzRHdn?=
 =?utf-8?B?ODFLcTlpbzlZcmNuOHVITkFsWThXM1IzbWppdFZpWjJpUnZmcTlWdWhmTWFz?=
 =?utf-8?B?WVBramV4K3lLbkhCblZqcnRNM3NrMkt0MVNKS3l6cnZtN08vWTVpRTRRclFS?=
 =?utf-8?B?bDJzNlVsTGxVNndZQi9HT3ZmQXNQajB1Y1JyY2krZnZpd0tuVzFQR1E4VU1K?=
 =?utf-8?B?N3F2Y3Y2OHpXT3dPcmJDVGZFcjBqcWFKeUErczNYcTZTYyt3dkxPMndMU1E2?=
 =?utf-8?B?aHd3MmlXQ3lDcmxzY0JBc3VnM0MvL3FFSytaZTY5YmtkQkJWMG5tKzg2K0ZF?=
 =?utf-8?B?bVBvTCtkVVd2R2Y2bDhJcHpvWktXL3BTSSt3SEtEYXV2Y1JjQzZZbXoxWTJh?=
 =?utf-8?B?WkFTbFB1Qkd1TWR5Zm1GcmZxYm5UV1dUc1JDalVqN1BtUTFlYklUcmxBdncv?=
 =?utf-8?B?RUUyanQvdFltTml0RmZYQW9abGNjVXlBeXd1dEg5YnNCWW14dFl3MDg5d21Y?=
 =?utf-8?B?L0VLSXZhWnIwMWx5ZUQ3YVJyK3F4T2lyckZDakJXUlJIRExWMENlZEcxaUNn?=
 =?utf-8?B?YnE5MTFQeHpXQ1VVMjRBdUk4Tjhkc0FnZW4xazJWMEp0NTNmZFNSSWMzOUcz?=
 =?utf-8?B?OWt4MWtLZDFQT2txMTFYSWxCWjZzcDF2a1hrdUt4KzdJOU1SRy8rNS9mNUFD?=
 =?utf-8?B?bE5GRTUvZ1hJWitFVkk3MXYycUZhbDhVRXBLWEFUTXBycDA1eHJBUTV5Q2xS?=
 =?utf-8?B?bk5kVHpWN0kzMVVWVFRuREJpRFlGRjRPL1l6VVplZ1BOZC94R2dZeTRuTFp0?=
 =?utf-8?B?ODIyc0FnWWhvdnpQL2VKVjBDSElCSkNEeWNEZ0s1TEpPTkpzUXkrSUFWVWVM?=
 =?utf-8?B?VWpPYUNwa0d2UnAwRGdiWkV1NllQcmlxNEtJVndzSlpoUllPVm9FaFU5dUls?=
 =?utf-8?B?d2R6ZHF0azY4VWNZTkxMdHdzU1M3bHNIWmV0QXJaeXpMek9GTDV6SUhlbnFz?=
 =?utf-8?B?cEVnaXIzNXR6djA0QTZVQXhOWXN0T2UwQ1VMWU5taDF3U2dSUUZmc0F6MFRk?=
 =?utf-8?B?eWtROEVjYjZKU3A0K1VydkZnV0UvaVVrTnBNbk90V2xDcEs0M2Ixd3pwa0JJ?=
 =?utf-8?B?dDBuM1RwV1h0RWFBSlZqVUlIWUE3d3d2YURrZXUrSGlJc2d3MHdMbW1yQ1hJ?=
 =?utf-8?B?UzBtUU10L0FjTU14bFJLK25SZmZjZmFtRWZkQitrUldzcUZmbnhmVkRXTVNu?=
 =?utf-8?B?VjIvQnB4QTRDaGp5T21xU0VGeFU5TEVnRTlyZ3NXWHpBeCtmMzNEU1BVSEVH?=
 =?utf-8?Q?PImwr8+KggwX8xlZAdHfaSqpfHnuSwsk3MGvRNi?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e42dec4-e29c-4741-71ee-08d9081195ac
X-MS-Exchange-CrossTenant-AuthSource: DM4PR12MB5278.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2021 17:43:07.0478
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cqjQ0hMfGrShPp9KOqLr+UqS2Sw8EsDkXYH8vlq74o8eMFl2D43EZ5b/W8qH+R9TlGtKwzz5pLC9Ow/A0dglNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5278
ARC-Seal: i=2; s=20121; d=open-mesh.org; t=1619372589; a=rsa-sha256;
	cv=pass;
	b=CScAcsen+oa2K5/AhzVpAIxGrIRyZulGsPStrcbBqEKCQzDoQq4INpnaUuAuXFKh4O9wCp
	QbZnJ2JhMH47r17FtPcuH5VH3DdVE7TfKt9c+U499tWBxcrfA58Md+HGp355fa4uiTUTO9
	Y6A4HWgCExos8zE/IMoSVaDFUR+GrM4=
ARC-Authentication-Results: i=2;
	diktynna.open-mesh.org;
	dkim=pass header.d=Nvidia.com header.s=selector2 header.b=ZtahNH1a;
	arc=pass ("microsoft.com:s=arcselector9901:i=1");
	spf=pass (diktynna.open-mesh.org: domain of nikolay@nvidia.com designates 40.107.77.47 as permitted sender) smtp.mailfrom=nikolay@nvidia.com
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1619372589;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=eRfisbajn2f4l6T+Q/i356a279Q1swZtvG3NUX9T03g=;
	b=4QGGs67AdTOxihRW4W/j8Pf7OZu6T3T+n3o7j8siHUomGvtNXs6sGnoNgyoUAN9eGAX6nS
	21xKVI5SrggHwZG04TYmywry9EC4M64UHZjOSJIuJTl/Qc7oTl/KtHaV9iag2uPf3XI8Du
	xe/n3gkrBcPYvWNZP3Hfd529TYOxyOM=
Content-Transfer-Encoding: quoted-printable
X-MailFrom: nikolay@nvidia.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1
Message-ID-Hash: LPHU76WH4ZH2IUILG5FSXKBC3XHJDNEJ
X-Message-ID-Hash: LPHU76WH4ZH2IUILG5FSXKBC3XHJDNEJ
X-Mailman-Approved-At: Sun, 25 Apr 2021 17:47:53 +0200
CC: Roopa Prabhu <roopa@nvidia.com>, Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>, bridge@lists.linux-foundation.org, b.a.t.m.a.n@lists.open-mesh.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LPHU76WH4ZH2IUILG5FSXKBC3XHJDNEJ/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

On 25/04/2021 19:00, Linus L=C3=BCssing wrote:
> A multicast router for IPv4 does not imply that the same host also is a
> multicast router for IPv6 and vice versa.
>=20
> To reduce multicast traffic when a host is only a multicast router for
> one of these two protocol families, keep router state for IPv4 and IPv6
> separately. Similar to how querier state is kept separately.
>=20
> For backwards compatibility for netlink and switchdev notifications
> these two will still only notify if a port switched from either no
> IPv4/IPv6 multicast router to any IPv4/IPv6 multicast router or the
> other way round. However a full netlink MDB router dump will now also
> include a multicast router timeout for both IPv4 and IPv6.
>=20
> Signed-off-by: Linus L=C3=BCssing <linus.luessing@c0d3.blue>
> ---
>  include/uapi/linux/if_bridge.h |   2 +
>  net/bridge/br_forward.c        |  22 ++-
>  net/bridge/br_input.c          |   2 +-
>  net/bridge/br_mdb.c            |  38 +++-
>  net/bridge/br_multicast.c      | 341 +++++++++++++++++++++++++--------
>  net/bridge/br_private.h        |  48 ++++-
>  6 files changed, 352 insertions(+), 101 deletions(-)
>=20

Hi Linus,
A few comments below, in general I like the change.
I'd really like it if this patch could be broken up, up to you I'll revie=
w it either way. :)
=20
> diff --git a/include/uapi/linux/if_bridge.h b/include/uapi/linux/if_bri=
dge.h
> index 13d59c51ef5b..6b56a7549531 100644
> --- a/include/uapi/linux/if_bridge.h
> +++ b/include/uapi/linux/if_bridge.h
> @@ -627,6 +627,8 @@ enum {
>  	MDBA_ROUTER_PATTR_UNSPEC,
>  	MDBA_ROUTER_PATTR_TIMER,
>  	MDBA_ROUTER_PATTR_TYPE,
> +	MDBA_ROUTER_PATTR_INET_TIMER,
> +	MDBA_ROUTER_PATTR_INET6_TIMER,
>  	__MDBA_ROUTER_PATTR_MAX
>  };
>  #define MDBA_ROUTER_PATTR_MAX (__MDBA_ROUTER_PATTR_MAX - 1)
> diff --git a/net/bridge/br_forward.c b/net/bridge/br_forward.c
> index 6e9b049ae521..897fafc83cd0 100644
> --- a/net/bridge/br_forward.c
> +++ b/net/bridge/br_forward.c
> @@ -275,8 +275,19 @@ void br_multicast_flood(struct net_bridge_mdb_entr=
y *mdst,
>  	struct net_bridge_port_group *p;
>  	bool allow_mode_include =3D true;
>  	struct hlist_node *rp;
> +#if IS_ENABLED(CONFIG_IPV6)
> +	bool is_ipv6 =3D false;
> +
> +	if (skb->protocol =3D=3D htons(ETH_P_IPV6)) {
> +		is_ipv6 =3D true;
> +		rp =3D rcu_dereference(hlist_first_rcu(&br->ip6_mc_router_list));
> +	} else {
> +#else
> +	if (1) {
> +#endif
> +		rp =3D rcu_dereference(hlist_first_rcu(&br->ip4_mc_router_list));
> +	}
> =20
> -	rp =3D rcu_dereference(hlist_first_rcu(&br->router_list));
>  	if (mdst) {
>  		p =3D rcu_dereference(mdst->ports);
>  		if (br_multicast_should_handle_mode(br, mdst->addr.proto) &&
> @@ -290,7 +301,14 @@ void br_multicast_flood(struct net_bridge_mdb_entr=
y *mdst,
>  		struct net_bridge_port *port, *lport, *rport;
> =20
>  		lport =3D p ? p->key.port : NULL;
> -		rport =3D hlist_entry_safe(rp, struct net_bridge_port, rlist);
> +#if IS_ENABLED(CONFIG_IPV6)
> +		if (is_ipv6)
> +			rport =3D hlist_entry_safe(rp, struct net_bridge_port,
> +						 ip6_rlist);
> +		else
> +#endif
> +			rport =3D hlist_entry_safe(rp, struct net_bridge_port,
> +						 ip4_rlist);
> =20

Please add a pointer to the proper list and retrieve it before this, pref=
errably also
add a helper to do that.

>  		if ((unsigned long)lport > (unsigned long)rport) {
>  			port =3D lport;
> diff --git a/net/bridge/br_input.c b/net/bridge/br_input.c
> index 8875e953ac53..1f506309efa8 100644
> --- a/net/bridge/br_input.c
> +++ b/net/bridge/br_input.c
> @@ -132,7 +132,7 @@ int br_handle_frame_finish(struct net *net, struct =
sock *sk, struct sk_buff *skb
>  		if ((mdst || BR_INPUT_SKB_CB_MROUTERS_ONLY(skb)) &&
>  		    br_multicast_querier_exists(br, eth_hdr(skb), mdst)) {
>  			if ((mdst && mdst->host_joined) ||
> -			    br_multicast_is_router(br)) {
> +			    br_multicast_is_router(br, skb)) {
>  				local_rcv =3D true;
>  				br->dev->stats.multicast++;
>  			}
> diff --git a/net/bridge/br_mdb.c b/net/bridge/br_mdb.c
> index 95fa4af0e8dd..2fce1a895a70 100644
> --- a/net/bridge/br_mdb.c
> +++ b/net/bridge/br_mdb.c
> @@ -22,25 +22,53 @@ static int br_rports_fill_info(struct sk_buff *skb,=
 struct netlink_callback *cb,
>  	struct net_bridge *br =3D netdev_priv(dev);
>  	struct net_bridge_port *p;
>  	struct nlattr *nest, *port_nest;
> +	bool have_ip4_mc_rtr, have_ip6_mc_rtr =3D false;
> +	unsigned long ip4_timer, ip6_timer =3D 0;
> =20

Reverse xmas tree, feel free to fix the current ones as well. :)

> -	if (!br->multicast_router || hlist_empty(&br->router_list))
> +	if (!br->multicast_router)
>  		return 0;
> =20
> +#if IS_ENABLED(CONFIG_IPV6)
> +	if (hlist_empty(&br->ip4_mc_router_list) &&
> +	    hlist_empty(&br->ip6_mc_router_list))
> +		return 0;
> +#else
> +	if (hlist_empty(&br->ip4_mc_router_list))
> +		return 0;
> +#endif
> +
>  	nest =3D nla_nest_start_noflag(skb, MDBA_ROUTER);
>  	if (nest =3D=3D NULL)
>  		return -EMSGSIZE;
> =20
> -	hlist_for_each_entry_rcu(p, &br->router_list, rlist) {
> -		if (!p)
> +	list_for_each_entry_rcu(p, &br->port_list, list) {
> +		have_ip4_mc_rtr =3D !hlist_unhashed(&p->ip4_rlist);
> +		ip4_timer =3D br_timer_value(&p->ip4_mc_router_timer);
> +#if IS_ENABLED(CONFIG_IPV6)
> +		have_ip6_mc_rtr =3D !hlist_unhashed(&p->ip6_rlist);
> +		ip6_timer =3D br_timer_value(&p->ip6_mc_router_timer);
> +#endif
> +
> +		if (!have_ip4_mc_rtr && !have_ip6_mc_rtr)
>  			continue;
> +
>  		port_nest =3D nla_nest_start_noflag(skb, MDBA_ROUTER_PORT);
>  		if (!port_nest)
>  			goto fail;
> +
>  		if (nla_put_nohdr(skb, sizeof(u32), &p->dev->ifindex) ||
>  		    nla_put_u32(skb, MDBA_ROUTER_PATTR_TIMER,
> -				br_timer_value(&p->multicast_router_timer)) ||
> +				max(ip4_timer, ip6_timer)) ||
>  		    nla_put_u8(skb, MDBA_ROUTER_PATTR_TYPE,
> -			       p->multicast_router)) {
> +			       p->multicast_router) ||
> +		#if IS_ENABLED(CONFIG_IPV6)
> +		    (have_ip6_mc_rtr &&
> +		     nla_put_u32(skb, MDBA_ROUTER_PATTR_INET6_TIMER,
> +				 ip6_timer)) ||
> +		#endif
> +		    (have_ip4_mc_rtr &&
> +		     nla_put_u32(skb, MDBA_ROUTER_PATTR_INET_TIMER,
> +				 ip4_timer))) {
>  			nla_nest_cancel(skb, port_nest);
>  			goto fail;
>  		}
> diff --git a/net/bridge/br_multicast.c b/net/bridge/br_multicast.c
> index 226bb05c3b42..0ebdbf09f44c 100644
> --- a/net/bridge/br_multicast.c
> +++ b/net/bridge/br_multicast.c
> @@ -51,8 +51,8 @@ static const struct rhashtable_params br_sg_port_rht_=
params =3D {
> =20
>  static void br_multicast_start_querier(struct net_bridge *br,
>  				       struct bridge_mcast_own_query *query);
> -static void br_multicast_add_router(struct net_bridge *br,
> -				    struct net_bridge_port *port);
> +static void br_ip4_multicast_add_router(struct net_bridge *br,
> +					struct net_bridge_port *port);
>  static void br_ip4_multicast_leave_group(struct net_bridge *br,
>  					 struct net_bridge_port *port,
>  					 __be32 group,
> @@ -60,8 +60,12 @@ static void br_ip4_multicast_leave_group(struct net_=
bridge *br,
>  					 const unsigned char *src);
>  static void br_multicast_port_group_rexmit(struct timer_list *t);
> =20
> -static void __del_port_router(struct net_bridge_port *p);
> +static void br_multicast_rport_del(struct net_bridge_port *p,
> +				   struct hlist_node *rlist);
> +static void br_multicast_rport_del_notify(struct net_bridge_port *p);
>  #if IS_ENABLED(CONFIG_IPV6)
> +static void br_ip6_multicast_add_router(struct net_bridge *br,
> +					struct net_bridge_port *port);
>  static void br_ip6_multicast_leave_group(struct net_bridge *br,
>  					 struct net_bridge_port *port,
>  					 const struct in6_addr *group,
> @@ -1354,23 +1358,40 @@ static int br_ip6_multicast_add_group(struct ne=
t_bridge *br,
>  }
>  #endif
> =20
> -static void br_multicast_router_expired(struct timer_list *t)
> +static void br_multicast_router_expired(struct net_bridge_port *port,
> +					struct timer_list *t,
> +					struct hlist_node *rlist)
>  {
> -	struct net_bridge_port *port =3D
> -			from_timer(port, t, multicast_router_timer);
>  	struct net_bridge *br =3D port->br;
> =20
>  	spin_lock(&br->multicast_lock);
>  	if (port->multicast_router =3D=3D MDB_RTR_TYPE_DISABLED ||
>  	    port->multicast_router =3D=3D MDB_RTR_TYPE_PERM ||
> -	    timer_pending(&port->multicast_router_timer))
> +	    timer_pending(t))
>  		goto out;
> =20
> -	__del_port_router(port);
> +	br_multicast_rport_del(port, rlist);
> +	br_multicast_rport_del_notify(port);
>  out:
>  	spin_unlock(&br->multicast_lock);
>  }
> =20
> +static void br_ip4_multicast_router_expired(struct timer_list *t)
> +{
> +	struct net_bridge_port *port =3D from_timer(port, t, ip4_mc_router_ti=
mer);
> +
> +	br_multicast_router_expired(port, t, &port->ip4_rlist);
> +}
> +
> +#if IS_ENABLED(CONFIG_IPV6)
> +static void br_ip6_multicast_router_expired(struct timer_list *t)
> +{
> +	struct net_bridge_port *port =3D from_timer(port, t, ip6_mc_router_ti=
mer);
> +
> +	br_multicast_router_expired(port, t, &port->ip6_rlist);
> +}
> +#endif
> +
>  static void br_mc_router_state_change(struct net_bridge *p,
>  				      bool is_mc_router)
>  {
> @@ -1384,14 +1405,14 @@ static void br_mc_router_state_change(struct ne=
t_bridge *p,
>  	switchdev_port_attr_set(p->dev, &attr, NULL);
>  }
> =20
> -static void br_multicast_local_router_expired(struct timer_list *t)
> +static void br_multicast_local_router_expired(struct net_bridge *br,
> +					      struct timer_list *timer)
>  {
> -	struct net_bridge *br =3D from_timer(br, t, multicast_router_timer);
> -
>  	spin_lock(&br->multicast_lock);
>  	if (br->multicast_router =3D=3D MDB_RTR_TYPE_DISABLED ||
>  	    br->multicast_router =3D=3D MDB_RTR_TYPE_PERM ||
> -	    timer_pending(&br->multicast_router_timer))
> +	    br_ip4_multicast_is_router(br) ||
> +	    br_ip6_multicast_is_router(br))
>  		goto out;
> =20
>  	br_mc_router_state_change(br, false);
> @@ -1399,6 +1420,22 @@ static void br_multicast_local_router_expired(st=
ruct timer_list *t)
>  	spin_unlock(&br->multicast_lock);
>  }
> =20
> +static inline void br_ip4_multicast_local_router_expired(struct timer_=
list *t)
> +{
> +	struct net_bridge *br =3D from_timer(br, t, ip4_mc_router_timer);
> +
> +	br_multicast_local_router_expired(br, t);
> +}
> +
> +#if IS_ENABLED(CONFIG_IPV6)
> +static inline void br_ip6_multicast_local_router_expired(struct timer_=
list *t)
> +{
> +	struct net_bridge *br =3D from_timer(br, t, ip6_mc_router_timer);
> +
> +	br_multicast_local_router_expired(br, t);
> +}
> +#endif
> +
>  static void br_multicast_querier_expired(struct net_bridge *br,
>  					 struct bridge_mcast_own_query *query)
>  {
> @@ -1613,11 +1650,13 @@ int br_multicast_add_port(struct net_bridge_por=
t *port)
>  	port->multicast_router =3D MDB_RTR_TYPE_TEMP_QUERY;
>  	port->multicast_eht_hosts_limit =3D BR_MCAST_DEFAULT_EHT_HOSTS_LIMIT;
> =20
> -	timer_setup(&port->multicast_router_timer,
> -		    br_multicast_router_expired, 0);
> +	timer_setup(&port->ip4_mc_router_timer,
> +		    br_ip4_multicast_router_expired, 0);
>  	timer_setup(&port->ip4_own_query.timer,
>  		    br_ip4_multicast_port_query_expired, 0);
>  #if IS_ENABLED(CONFIG_IPV6)
> +	timer_setup(&port->ip6_mc_router_timer,
> +		    br_ip6_multicast_router_expired, 0);
>  	timer_setup(&port->ip6_own_query.timer,
>  		    br_ip6_multicast_port_query_expired, 0);
>  #endif
> @@ -1649,7 +1688,10 @@ void br_multicast_del_port(struct net_bridge_por=
t *port)
>  	hlist_move_list(&br->mcast_gc_list, &deleted_head);
>  	spin_unlock_bh(&br->multicast_lock);
>  	br_multicast_gc(&deleted_head);
> -	del_timer_sync(&port->multicast_router_timer);
> +	del_timer_sync(&port->ip4_mc_router_timer);
> +#if IS_ENABLED(CONFIG_IPV6)
> +	del_timer_sync(&port->ip6_mc_router_timer);
> +#endif
>  	free_percpu(port->mcast_stats);
>  }
> =20
> @@ -1673,9 +1715,14 @@ static void __br_multicast_enable_port(struct ne=
t_bridge_port *port)
>  #if IS_ENABLED(CONFIG_IPV6)
>  	br_multicast_enable(&port->ip6_own_query);
>  #endif
> -	if (port->multicast_router =3D=3D MDB_RTR_TYPE_PERM &&
> -	    hlist_unhashed(&port->rlist))
> -		br_multicast_add_router(br, port);
> +	if (port->multicast_router =3D=3D MDB_RTR_TYPE_PERM) {
> +		if (hlist_unhashed(&port->ip4_rlist))
> +			br_ip4_multicast_add_router(br, port);
> +#if IS_ENABLED(CONFIG_IPV6)
> +		if (hlist_unhashed(&port->ip6_rlist))
> +			br_ip6_multicast_add_router(br, port);
> +#endif
> +	}
>  }
> =20
>  void br_multicast_enable_port(struct net_bridge_port *port)
> @@ -1698,13 +1745,15 @@ void br_multicast_disable_port(struct net_bridg=
e_port *port)
>  		if (!(pg->flags & MDB_PG_FLAGS_PERMANENT))
>  			br_multicast_find_del_pg(br, pg);
> =20
> -	__del_port_router(port);
> -
> -	del_timer(&port->multicast_router_timer);
> +	br_multicast_rport_del(port, &port->ip4_rlist);
> +	del_timer(&port->ip4_mc_router_timer);
>  	del_timer(&port->ip4_own_query.timer);
>  #if IS_ENABLED(CONFIG_IPV6)
> +	br_multicast_rport_del(port, &port->ip6_rlist);
> +	del_timer(&port->ip6_mc_router_timer);
>  	del_timer(&port->ip6_own_query.timer);
>  #endif
> +	br_multicast_rport_del_notify(port);
>  	spin_unlock(&br->multicast_lock);
>  }
> =20
> @@ -2615,22 +2664,6 @@ static bool br_ip6_multicast_select_querier(stru=
ct net_bridge *br,
>  }
>  #endif
> =20
> -static bool br_multicast_select_querier(struct net_bridge *br,
> -					struct net_bridge_port *port,
> -					struct br_ip *saddr)
> -{
> -	switch (saddr->proto) {
> -	case htons(ETH_P_IP):
> -		return br_ip4_multicast_select_querier(br, port, saddr->src.ip4);
> -#if IS_ENABLED(CONFIG_IPV6)
> -	case htons(ETH_P_IPV6):
> -		return br_ip6_multicast_select_querier(br, port, &saddr->src.ip6);
> -#endif
> -	}
> -
> -	return false;
> -}
> -
>  static void
>  br_multicast_update_query_timer(struct net_bridge *br,
>  				struct bridge_mcast_other_query *query,
> @@ -2655,44 +2688,95 @@ static void br_port_mc_router_state_change(stru=
ct net_bridge_port *p,
>  	switchdev_port_attr_set(p->dev, &attr, NULL);
>  }
> =20
> -/*
> - * Add port to router_list
> +/* Add port to router_list
>   *  list is maintained ordered by pointer value
>   *  and locked by br->multicast_lock and RCU
>   */
> -static void br_multicast_add_router(struct net_bridge *br,
> -				    struct net_bridge_port *port)
> +static void br_ip4_multicast_add_router(struct net_bridge *br,
> +					struct net_bridge_port *port)
>  {
>  	struct net_bridge_port *p;
>  	struct hlist_node *slot =3D NULL;
> =20
> -	if (!hlist_unhashed(&port->rlist))
> +	if (!hlist_unhashed(&port->ip4_rlist))
>  		return;
> =20
> -	hlist_for_each_entry(p, &br->router_list, rlist) {
> -		if ((unsigned long) port >=3D (unsigned long) p)
> +	hlist_for_each_entry(p, &br->ip4_mc_router_list, ip4_rlist) {
> +		if ((unsigned long)port >=3D (unsigned long)p)
>  			break;
> -		slot =3D &p->rlist;
> +		slot =3D &p->ip4_rlist;
>  	}
> =20
>  	if (slot)
> -		hlist_add_behind_rcu(&port->rlist, slot);
> +		hlist_add_behind_rcu(&port->ip4_rlist, slot);
>  	else
> -		hlist_add_head_rcu(&port->rlist, &br->router_list);
> -	br_rtr_notify(br->dev, port, RTM_NEWMDB);
> -	br_port_mc_router_state_change(port, true);
> +		hlist_add_head_rcu(&port->ip4_rlist, &br->ip4_mc_router_list);
> +
> +	/* For backwards compatibility for now, only notify if we
> +	 * switched from no IPv4/IPv6 multicast router to a new
> +	 * IPv4 or IPv6 multicast router.
> +	 */
> +#if IS_ENABLED(CONFIG_IPV6)
> +	if (hlist_unhashed(&port->ip6_rlist)) {
> +#else
> +	if (1) {
> +#endif
> +		br_rtr_notify(br->dev, port, RTM_NEWMDB);
> +		br_port_mc_router_state_change(port, true);
> +	}
>  }
> =20
> -static void br_multicast_mark_router(struct net_bridge *br,
> -				     struct net_bridge_port *port)
> +#if IS_ENABLED(CONFIG_IPV6)
> +/* Add port to router_list
> + *  list is maintained ordered by pointer value
> + *  and locked by br->multicast_lock and RCU
> + */
> +static void br_ip6_multicast_add_router(struct net_bridge *br,
> +					struct net_bridge_port *port)
> +{
> +	struct net_bridge_port *p;
> +	struct hlist_node *slot =3D NULL;
> +

Reverse xmas tree order.

> +	if (!hlist_unhashed(&port->ip6_rlist))
> +		return;
> +
> +	hlist_for_each_entry(p, &br->ip6_mc_router_list, ip6_rlist) {
> +		if ((unsigned long)port >=3D (unsigned long)p)
> +			break;
> +		slot =3D &p->ip6_rlist;
> +	}
> +
> +	if (slot)
> +		hlist_add_behind_rcu(&port->ip6_rlist, slot);
> +	else
> +		hlist_add_head_rcu(&port->ip6_rlist, &br->ip6_mc_router_list);
> +
> +	/* For backwards compatibility for now, only notify if we
> +	 * switched from no IPv4/IPv6 multicast router to a new
> +	 * IPv4 or IPv6 multicast router.
> +	 */
> +	if (hlist_unhashed(&port->ip4_rlist)) {
> +		br_rtr_notify(br->dev, port, RTM_NEWMDB);
> +		br_port_mc_router_state_change(port, true);
> +	}
> +}
> +#endif

The add router functions are almost identical, perhaps they can share the=
 common code.

> +
> +static void br_ip4_multicast_mark_router(struct net_bridge *br,
> +					 struct net_bridge_port *port)
>  {
>  	unsigned long now =3D jiffies;
> =20
>  	if (!port) {
>  		if (br->multicast_router =3D=3D MDB_RTR_TYPE_TEMP_QUERY) {
> -			if (!timer_pending(&br->multicast_router_timer))
> +#if IS_ENABLED(CONFIG_IPV6)
> +			if (!timer_pending(&br->ip4_mc_router_timer) &&
> +			    !timer_pending(&br->ip6_mc_router_timer))
> +#else
> +			if (!timer_pending(&br->ip4_mc_router_timer))
> +#endif
>  				br_mc_router_state_change(br, true);
> -			mod_timer(&br->multicast_router_timer,
> +			mod_timer(&br->ip4_mc_router_timer,
>  				  now + br->multicast_querier_interval);
>  		}
>  		return;
> @@ -2702,24 +2786,69 @@ static void br_multicast_mark_router(struct net=
_bridge *br,
>  	    port->multicast_router =3D=3D MDB_RTR_TYPE_PERM)
>  		return;
> =20
> -	br_multicast_add_router(br, port);
> +	br_ip4_multicast_add_router(br, port);
> =20
> -	mod_timer(&port->multicast_router_timer,
> +	mod_timer(&port->ip4_mc_router_timer,
>  		  now + br->multicast_querier_interval);
>  }
> =20
> -static void br_multicast_query_received(struct net_bridge *br,
> -					struct net_bridge_port *port,
> -					struct bridge_mcast_other_query *query,
> -					struct br_ip *saddr,
> -					unsigned long max_delay)
> +#if IS_ENABLED(CONFIG_IPV6)
> +static void br_ip6_multicast_mark_router(struct net_bridge *br,
> +					 struct net_bridge_port *port)
> +{
> +	unsigned long now =3D jiffies;
> +
> +	if (!port) {
> +		if (br->multicast_router =3D=3D MDB_RTR_TYPE_TEMP_QUERY) {
> +			if (!timer_pending(&br->ip4_mc_router_timer) &&
> +			    !timer_pending(&br->ip6_mc_router_timer))
> +				br_mc_router_state_change(br, true);
> +			mod_timer(&br->ip6_mc_router_timer,
> +				  now + br->multicast_querier_interval);
> +		}
> +		return;
> +	}
> +
> +	if (port->multicast_router =3D=3D MDB_RTR_TYPE_DISABLED ||
> +	    port->multicast_router =3D=3D MDB_RTR_TYPE_PERM)
> +		return;
> +
> +	br_ip6_multicast_add_router(br, port);
> +
> +	mod_timer(&port->ip6_mc_router_timer,
> +		  now + br->multicast_querier_interval);
> +}
> +#endif
> +
> +static void
> +br_ip4_multicast_query_received(struct net_bridge *br,
> +				struct net_bridge_port *port,
> +				struct bridge_mcast_other_query *query,
> +				struct br_ip *saddr,
> +				unsigned long max_delay)
> +{
> +	if (!br_ip4_multicast_select_querier(br, port, saddr->src.ip4))
> +		return;
> +
> +	br_multicast_update_query_timer(br, query, max_delay);
> +	br_ip4_multicast_mark_router(br, port);
> +}
> +
> +#if IS_ENABLED(CONFIG_IPV6)
> +static void
> +br_ip6_multicast_query_received(struct net_bridge *br,
> +				struct net_bridge_port *port,
> +				struct bridge_mcast_other_query *query,
> +				struct br_ip *saddr,
> +				unsigned long max_delay)
>  {
> -	if (!br_multicast_select_querier(br, port, saddr))
> +	if (!br_ip6_multicast_select_querier(br, port, &saddr->src.ip6))
>  		return;
> =20
>  	br_multicast_update_query_timer(br, query, max_delay);
> -	br_multicast_mark_router(br, port);
> +	br_ip6_multicast_mark_router(br, port);
>  }
> +#endif
> =20
>  static void br_ip4_multicast_query(struct net_bridge *br,
>  				   struct net_bridge_port *port,
> @@ -2768,8 +2897,8 @@ static void br_ip4_multicast_query(struct net_bri=
dge *br,
>  		saddr.proto =3D htons(ETH_P_IP);
>  		saddr.src.ip4 =3D iph->saddr;
> =20
> -		br_multicast_query_received(br, port, &br->ip4_other_query,
> -					    &saddr, max_delay);
> +		br_ip4_multicast_query_received(br, port, &br->ip4_other_query,
> +						&saddr, max_delay);
>  		goto out;
>  	}
> =20
> @@ -2856,8 +2985,8 @@ static int br_ip6_multicast_query(struct net_brid=
ge *br,
>  		saddr.proto =3D htons(ETH_P_IPV6);
>  		saddr.src.ip6 =3D ipv6_hdr(skb)->saddr;
> =20
> -		br_multicast_query_received(br, port, &br->ip6_other_query,
> -					    &saddr, max_delay);
> +		br_ip6_multicast_query_received(br, port, &br->ip6_other_query,
> +						&saddr, max_delay);
>  		goto out;
>  	} else if (!group) {
>  		goto out;
> @@ -3087,7 +3216,7 @@ static void br_multicast_pim(struct net_bridge *b=
r,
>  	    pim_hdr_type(pimhdr) !=3D PIM_TYPE_HELLO)
>  		return;
> =20
> -	br_multicast_mark_router(br, port);
> +	br_ip4_multicast_mark_router(br, port);
>  }
> =20
>  static int br_ip4_multicast_mrd_rcv(struct net_bridge *br,
> @@ -3098,7 +3227,7 @@ static int br_ip4_multicast_mrd_rcv(struct net_br=
idge *br,
>  	    igmp_hdr(skb)->type !=3D IGMP_MRDISC_ADV)
>  		return -ENOMSG;
> =20
> -	br_multicast_mark_router(br, port);
> +	br_ip4_multicast_mark_router(br, port);
> =20
>  	return 0;
>  }
> @@ -3166,7 +3295,7 @@ static void br_ip6_multicast_mrd_rcv(struct net_b=
ridge *br,
>  	if (icmp6_hdr(skb)->icmp6_type !=3D ICMPV6_MRDISC_ADV)
>  		return;
> =20
> -	br_multicast_mark_router(br, port);
> +	br_ip6_multicast_mark_router(br, port);
>  }
> =20
>  static int br_multicast_ipv6_rcv(struct net_bridge *br,
> @@ -3316,13 +3445,15 @@ void br_multicast_init(struct net_bridge *br)
>  	br_opt_toggle(br, BROPT_HAS_IPV6_ADDR, true);
> =20
>  	spin_lock_init(&br->multicast_lock);
> -	timer_setup(&br->multicast_router_timer,
> -		    br_multicast_local_router_expired, 0);
> +	timer_setup(&br->ip4_mc_router_timer,
> +		    br_ip4_multicast_local_router_expired, 0);
>  	timer_setup(&br->ip4_other_query.timer,
>  		    br_ip4_multicast_querier_expired, 0);
>  	timer_setup(&br->ip4_own_query.timer,
>  		    br_ip4_multicast_query_expired, 0);
>  #if IS_ENABLED(CONFIG_IPV6)
> +	timer_setup(&br->ip6_mc_router_timer,
> +		    br_ip6_multicast_local_router_expired, 0);
>  	timer_setup(&br->ip6_other_query.timer,
>  		    br_ip6_multicast_querier_expired, 0);
>  	timer_setup(&br->ip6_own_query.timer,
> @@ -3416,10 +3547,11 @@ void br_multicast_open(struct net_bridge *br)
> =20
>  void br_multicast_stop(struct net_bridge *br)
>  {
> -	del_timer_sync(&br->multicast_router_timer);
> +	del_timer_sync(&br->ip4_mc_router_timer);
>  	del_timer_sync(&br->ip4_other_query.timer);
>  	del_timer_sync(&br->ip4_own_query.timer);
>  #if IS_ENABLED(CONFIG_IPV6)
> +	del_timer_sync(&br->ip6_mc_router_timer);
>  	del_timer_sync(&br->ip6_other_query.timer);
>  	del_timer_sync(&br->ip6_own_query.timer);
>  #endif
> @@ -3453,7 +3585,10 @@ int br_multicast_set_router(struct net_bridge *b=
r, unsigned long val)
>  	case MDB_RTR_TYPE_DISABLED:
>  	case MDB_RTR_TYPE_PERM:
>  		br_mc_router_state_change(br, val =3D=3D MDB_RTR_TYPE_PERM);
> -		del_timer(&br->multicast_router_timer);
> +		del_timer(&br->ip4_mc_router_timer);
> +#if IS_ENABLED(CONFIG_IPV6)
> +		del_timer(&br->ip6_mc_router_timer);
> +#endif
>  		br->multicast_router =3D val;
>  		err =3D 0;
>  		break;
> @@ -3470,11 +3605,26 @@ int br_multicast_set_router(struct net_bridge *=
br, unsigned long val)
>  	return err;
>  }
> =20
> -static void __del_port_router(struct net_bridge_port *p)
> +static void br_multicast_rport_del(struct net_bridge_port *p,
> +				   struct hlist_node *rlist)
>  {
> -	if (hlist_unhashed(&p->rlist))
> +	if (hlist_unhashed(rlist))
>  		return;
> -	hlist_del_init_rcu(&p->rlist);
> +	hlist_del_init_rcu(rlist);
> +}
> +
> +static void br_multicast_rport_del_notify(struct net_bridge_port *p)
> +{
> +	/* For backwards compatibility for now, only notify if there is
> +	 * no multicast router anymore for both IPv4 and IPv6.
> +	 */
> +	if (!hlist_unhashed(&p->ip4_rlist))
> +		return;
> +#if IS_ENABLED(CONFIG_IPV6)
> +	if (!hlist_unhashed(&p->ip6_rlist))
> +		return;
> +#endif
> +
>  	br_rtr_notify(p->br->dev, p, RTM_DELMDB);
>  	br_port_mc_router_state_change(p, false);
> =20
> @@ -3492,30 +3642,51 @@ int br_multicast_set_port_router(struct net_bri=
dge_port *p, unsigned long val)
>  	spin_lock(&br->multicast_lock);
>  	if (p->multicast_router =3D=3D val) {
>  		/* Refresh the temp router port timer */
> -		if (p->multicast_router =3D=3D MDB_RTR_TYPE_TEMP)
> -			mod_timer(&p->multicast_router_timer,
> +		if (p->multicast_router =3D=3D MDB_RTR_TYPE_TEMP) {
> +			mod_timer(&p->ip4_mc_router_timer,
>  				  now + br->multicast_querier_interval);
> +#if IS_ENABLED(CONFIG_IPV6)
> +			mod_timer(&p->ip6_mc_router_timer,
> +				  now + br->multicast_querier_interval);
> +#endif
> +		}
>  		err =3D 0;
>  		goto unlock;
>  	}
>  	switch (val) {
>  	case MDB_RTR_TYPE_DISABLED:
>  		p->multicast_router =3D MDB_RTR_TYPE_DISABLED;
> -		__del_port_router(p);
> -		del_timer(&p->multicast_router_timer);
> +		br_multicast_rport_del(p, &p->ip4_rlist);
> +		del_timer(&p->ip4_mc_router_timer);
> +#if IS_ENABLED(CONFIG_IPV6)
> +		br_multicast_rport_del(p, &p->ip6_rlist);
> +		del_timer(&p->ip6_mc_router_timer);
> +#endif
> +		br_multicast_rport_del_notify(p);
>  		break;
>  	case MDB_RTR_TYPE_TEMP_QUERY:
>  		p->multicast_router =3D MDB_RTR_TYPE_TEMP_QUERY;
> -		__del_port_router(p);
> +		br_multicast_rport_del(p, &p->ip4_rlist);
> +#if IS_ENABLED(CONFIG_IPV6)
> +		br_multicast_rport_del(p, &p->ip6_rlist);
> +#endif
> +		br_multicast_rport_del_notify(p);
>  		break;
>  	case MDB_RTR_TYPE_PERM:
>  		p->multicast_router =3D MDB_RTR_TYPE_PERM;
> -		del_timer(&p->multicast_router_timer);
> -		br_multicast_add_router(br, p);
> +		del_timer(&p->ip4_mc_router_timer);
> +		br_ip4_multicast_add_router(br, p);
> +#if IS_ENABLED(CONFIG_IPV6)
> +		del_timer(&p->ip6_mc_router_timer);
> +		br_ip6_multicast_add_router(br, p);
> +#endif
>  		break;
>  	case MDB_RTR_TYPE_TEMP:
>  		p->multicast_router =3D MDB_RTR_TYPE_TEMP;
> -		br_multicast_mark_router(br, p);
> +		br_ip4_multicast_mark_router(br, p);
> +#if IS_ENABLED(CONFIG_IPV6)
> +		br_ip6_multicast_mark_router(br, p);
> +#endif
>  		break;
>  	default:
>  		goto unlock;
> @@ -3621,7 +3792,7 @@ bool br_multicast_router(const struct net_device =
*dev)
>  	bool is_router;
> =20
>  	spin_lock_bh(&br->multicast_lock);
> -	is_router =3D br_multicast_is_router(br);
> +	is_router =3D br_multicast_is_router(br, NULL);
>  	spin_unlock_bh(&br->multicast_lock);
>  	return is_router;
>  }
> diff --git a/net/bridge/br_private.h b/net/bridge/br_private.h
> index 7ce8a77cc6b6..203f64e4d4a2 100644
> --- a/net/bridge/br_private.h
> +++ b/net/bridge/br_private.h
> @@ -307,16 +307,18 @@ struct net_bridge_port {
> =20
>  #ifdef CONFIG_BRIDGE_IGMP_SNOOPING
>  	struct bridge_mcast_own_query	ip4_own_query;
> +	struct timer_list		ip4_mc_router_timer;
> +	struct hlist_node		ip4_rlist;
>  #if IS_ENABLED(CONFIG_IPV6)
>  	struct bridge_mcast_own_query	ip6_own_query;
> +	struct timer_list		ip6_mc_router_timer;
> +	struct hlist_node		ip6_rlist;
>  #endif /* IS_ENABLED(CONFIG_IPV6) */
>  	u32				multicast_eht_hosts_limit;
>  	u32				multicast_eht_hosts_cnt;
>  	unsigned char			multicast_router;
>  	struct bridge_mcast_stats	__percpu *mcast_stats;
> -	struct timer_list		multicast_router_timer;
>  	struct hlist_head		mglist;
> -	struct hlist_node		rlist;
>  #endif
> =20
>  #ifdef CONFIG_SYSFS
> @@ -449,14 +451,16 @@ struct net_bridge {
> =20
>  	struct hlist_head		mcast_gc_list;
>  	struct hlist_head		mdb_list;
> -	struct hlist_head		router_list;
> =20
> -	struct timer_list		multicast_router_timer;
> +	struct hlist_head		ip4_mc_router_list;
> +	struct timer_list		ip4_mc_router_timer;
>  	struct bridge_mcast_other_query	ip4_other_query;
>  	struct bridge_mcast_own_query	ip4_own_query;
>  	struct bridge_mcast_querier	ip4_querier;
>  	struct bridge_mcast_stats	__percpu *mcast_stats;
>  #if IS_ENABLED(CONFIG_IPV6)
> +	struct hlist_head		ip6_mc_router_list;
> +	struct timer_list		ip6_mc_router_timer;
>  	struct bridge_mcast_other_query	ip6_other_query;
>  	struct bridge_mcast_own_query	ip6_own_query;
>  	struct bridge_mcast_querier	ip6_querier;
> @@ -864,11 +868,39 @@ static inline bool br_group_is_l2(const struct br=
_ip *group)
>  #define mlock_dereference(X, br) \
>  	rcu_dereference_protected(X, lockdep_is_held(&br->multicast_lock))
> =20
> -static inline bool br_multicast_is_router(struct net_bridge *br)
> +static inline bool br_ip4_multicast_is_router(struct net_bridge *br)
>  {
> -	return br->multicast_router =3D=3D 2 ||
> -	       (br->multicast_router =3D=3D 1 &&
> -		timer_pending(&br->multicast_router_timer));
> +	return timer_pending(&br->ip4_mc_router_timer);
> +}
> +
> +static inline bool br_ip6_multicast_is_router(struct net_bridge *br)
> +{
> +#if IS_ENABLED(CONFIG_IPV6)
> +	return timer_pending(&br->ip6_mc_router_timer);
> +#else
> +	return false;
> +#endif
> +}
> +
> +static inline bool
> +br_multicast_is_router(struct net_bridge *br, struct sk_buff *skb)
> +{
> +	if (br->multicast_router =3D=3D 2)
> +		return true;
> +
> +	if (br->multicast_router =3D=3D 1) {
> +		if (skb) {
> +			if (skb->protocol =3D=3D htons(ETH_P_IP))
> +				return br_ip4_multicast_is_router(br);
> +			else if (skb->protocol =3D=3D htons(ETH_P_IPV6))
> +				return br_ip6_multicast_is_router(br);
> +		} else {
> +			return br_ip4_multicast_is_router(br) ||
> +			       br_ip6_multicast_is_router(br);
> +		}
> +	}
> +
> +	return false;
>  }

Please use names instead of values for the router types.

> =20
>  static inline bool
>=20

Thanks,
 Nik
