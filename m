Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TyLvD5Z0U2qSbAMAu9opvQ
	(envelope-from <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>)
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 12 Jul 2026 13:03:50 +0200
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F46744751
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 12 Jul 2026 13:03:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=arndb.de header.s=fm1 header.b=WxzzMJFR;
	dkim=pass header.d=messagingengine.com header.s=fm2 header.b="U jYqDSe";
	dmarc=pass (policy=none) header.from=arndb.de;
	spf=none (mail.lfdr.de: domain of "b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org" has no SPF policy when checking 136.243.236.17) smtp.mailfrom="b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org";
	arc=pass ("open-mesh.org:s=20121:i=2")
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id A017484038
	for <lists+b.a.t.m.a.n@lfdr.de>; Sun, 12 Jul 2026 13:03:49 +0200 (CEST)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1783854229;
 b=DD8oQ+FKgQLhHH6o1d9l87tWEe9wgZh+XnFyOW7YdtQdwdX3MsgGzcwHvcXvjRuC0yMan
 VJCr9OMiebm+pth4cW7P4Q34HbfQddyj31m88xS3av7GIfiyKsqawJ5rwMEbHM3x0fihh+c
 GxL9tNeZemTMsxMgveFEjFmIq1iWhCY=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1783854229; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=VmtnK3tqoDU1aIaol+aWaActTb6DTRuQA5S8IlUXC6U=;
 b=zJW6QgxcyzQw1Z3pOsfzl/vsNv14SVJNH44X/H/+gUoTJ4u/PwpGrospQAsNW19I6vDj3
 0uyGGpBI2MHQ24Nzxr/+0uDeA4GGVnpNyWTotx5aTVet5PyO2y5nej/bQRDHU5veaQqOumU
 jqxQDQsN+cTpSejzXvnL3b07uwZS2D0=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=arndb.de;
 arc=pass;
 dmarc=pass header.from=arndb.de policy.dmarc=none
Received: from flow-a4-smtp.messagingengine.com
 (flow-a4-smtp.messagingengine.com [103.168.172.139])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 9FF3A8028A
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sun, 12 Jul 2026 13:02:47 +0200 (CEST)
ARC-Seal: i=1; a=rsa-sha256; d=open-mesh.org; s=20121; cv=none; t=1783854178;
	b=VRKoento4HaBpu0py211+6wsGy68UeaEC4aryOnTV/8pGBTdHH/oWhdfldtVkeNYbayvWN
	dxczBg9wfbhv8Q1xxSI9TFTgb6KkdhgdudpMUrJLhuNF/oFIVUFYUqaDo0GnmcBpgOizhK
	sFl2FHbHjLJWd6OveG8o+ks/H9MySQ8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1783854178;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=VmtnK3tqoDU1aIaol+aWaActTb6DTRuQA5S8IlUXC6U=;
	b=TtaaByACo+dtGxTtPn6CnDjyQbAXIQzkFubeOoYD91C9ffRePkWr/yuPsuEbRvjR1Pfj+s
	nkuU+XxTc1e04gLFcdTnTvsPNQIZ/pquTLoUXANBRGzSA0orI/sulT3FVrMacLc/c3HE9m
	i1GoG/SIQcGUFNraKffglU3plM9dAQg=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=arndb.de header.s=fm1 header.b=WxzzMJFR;
	dkim=pass header.d=messagingengine.com header.s=fm2 header.b="U jYqDSe";
	spf=pass (diktynna.open-mesh.org: domain of arnd@arndb.de designates
 103.168.172.139 as permitted sender) smtp.mailfrom=arnd@arndb.de;
	dmarc=pass (policy=none) header.from=arndb.de
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailflow.phl.internal (Postfix) with ESMTP id 0B75A138025E;
	Sun, 12 Jul 2026 07:02:45 -0400 (EDT)
Received: from phl-imap-05 ([10.202.2.95])
  by phl-compute-04.internal (MEProxy); Sun, 12 Jul 2026 07:02:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm1; t=1783854165;
	 x=1783861365; bh=VmtnK3tqoDU1aIaol+aWaActTb6DTRuQA5S8IlUXC6U=; b=
	WxzzMJFRBMefM70b/YtDS4TGQzae1Lt/rly/upptZh5fiBQ/fgL1t0EVfjBFGBN8
	y3oHExa9YWDQRMyr7UQAu8Svx/w4tjxqi8/PSOMY6DvjDwL0TZKwHwZA9Ozd2pYf
	s0ypipZNS8YGe2m4DOJe+38aDBHK+jcODlukRpagOVHD9KEJkdoQqgev21V8Bgb3
	TCdD201xrmKe4YIQ1qTBGr8mMYvetvHkQoCSb6jHBr01wyoKlmdhQmLjG7/Wa4aa
	rs8eKVjx7yIIkxGCiHi9M1kuHiEPyUx1LiHzPOCzYk3arkdLbjWPxJP8Byp5TUOQ
	GxF66xEjwQreUjXukLkCxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1783854165; x=
	1783861365; bh=VmtnK3tqoDU1aIaol+aWaActTb6DTRuQA5S8IlUXC6U=; b=U
	jYqDSeLxMU5ePSUGPDE9I0O+Exrzvenmm34qVl7yGd9kO5OjZM4Nba5EIOkF9dv3
	xbKJusquIu/RrdrD6CtBzIv0EDEmxbAhThdwGvQHTnpo2TDIjQEKyKCx0zVgVG4v
	MwbaQlaY/YSKqvHcswOF7zPh5R8hrBjf645qkfqkcQmWRXgi/k7HA1iEQiok67Xm
	69YEfw3juGlJftC0DsXryuUIhIaOjq2ddjeAdhPFtfFc045xVKuzffiJ8QKSF2UW
	O7Asl8sBFDCyqLasMb974+9PXhLP/sU+LeqELU777jCsaUXHy5EIQlONJRbvQD0l
	nsD4pCYVBIlHyFjN/7Jsw==
X-ME-Sender: <xms:SXRTagVsyQ8TX1iEIAxFTrUnBBvg3ouWIpLBpPooAqGRyR2NZALW9Q>
    <xme:SXRTavZP-nXVqS1pChO9GStBCMnL0eeMY-iAfuLUn6Dud2aygQe_POwJXvQ-rGkj1
    899by3cZoizkZNHBE50WoNoIx-Ocnc8el2ENhnhSOyttQHye1fMY64>
X-ME-Proxy-Cause: 
 dmFkZTFFbWNFV8UtK7PJ0YbSmA1A6l1wZb8N5iMZiv4PmzggaXO+c+HZuMN5dbOW4/LwO4
    YrukvejgOijtkueKJtcp4wgn4EhO63TCyyzHULfYQ2kFzWvDfUC3HWcVgv98a9p3wmqOoP
    w4qayiqS0HMo3Jap3E4pumgiQ3lyrAKF9DlQo0/x7Vy2uECt+Jy4NACfXefBg4WHXnMK2A
    UENjemuL/g1YRCyXvDovMaGyHuMBa5JymL5nwjoOE3I2qwrEWoBlVH7JlrO1b+WcK48apy
    0bh/8MaX95lIq8caXuYf9xgC2zt9vvdMfjxFmpJdLGcSI6sCp93t5lGDrR6djFw1SGbSH9
    DJwEGK6oflC0+CJsijysvViaYJFn3czJOJ8wT4taro4O3sdXQE4YW1tubTULU31gMU6HDI
    npWKA0QFVWKK3PC5QuzFhriKLeIyPk0XlEhysD/nSStZ7x0lKeUDYwnJvvSAIigLSn8nWf
    PyAidznJn1v5eQA/hAL2gj9KhOqesySOSlWonQ+mNx9JRj+A/jnejg8SlNlhLkce3uj5+O
    /r9MtC7Kknkp+lg03SNpnmqr8+d7VdpV/I/EEDURuqzaOT8bFhRzha5fO5kjgbTdv/NvEG
    LeDxahJFEmmzScN38liLw+1/3K9JakxlQk2CYCzd0cMpr9LXzeOrR/yxM4wA
X-ME-Proxy: <xmx:UXRTaj0sSmZd0VqAg1Ab8vc217-LONz6IRtUmshppkUdvY60mSRlZw>
    <xmx:UXRTaork14UHHg7w8fqQyE86kpW_mANgES-srmAP6Z44K5DH5HjSwg>
    <xmx:UXRTahF3AcH9RhNQsb3uaMj_kkgPVZA8vLCVaaE8_vKD1PG-G4UdyA>
    <xmx:UXRTaq7ZeQ01Sj7O-hgfgLPJxURhNMS9O3pblaTcSMXqSYfUUfP1Rg>
    <xmx:VXRTajwxpExOzP0me6ntckPmhFUoyUd4EPzl75I2G2v1oTlEJtNxvefy>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id 29B00182007E; Sun, 12 Jul 2026 07:02:33 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
X-ThreadId: ARmmoW1aQeCk
Date: Sun, 12 Jul 2026 13:01:52 +0200
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Fernando Fernandez Mancera" <fmancera@suse.de>,
 Netdev <netdev@vger.kernel.org>
Cc: "David S . Miller" <davem@davemloft.net>,
 "Eric Dumazet" <edumazet@google.com>, "Jakub Kicinski" <kuba@kernel.org>,
 "Paolo Abeni" <pabeni@redhat.com>, "David Ahern" <dsahern@kernel.org>,
 "Simon Horman" <horms@kernel.org>, "Ido Schimmel" <idosch@nvidia.com>,
 "Jason Gunthorpe" <jgg@ziepe.ca>, "Leon Romanovsky" <leon@kernel.org>,
 "Andrew Lunn" <andrew+netdev@lunn.ch>,
 "Anthony L Nguyen" <anthony.l.nguyen@intel.com>,
 "Przemek Kitszel" <przemyslaw.kitszel@intel.com>,
 "Elad Nachman" <enachman@marvell.com>,
 "Saeed Mahameed" <saeedm@nvidia.com>, "Tariq Toukan" <tariqt@nvidia.com>,
 "Mark Bloch" <mbloch@nvidia.com>, "Petr Machata" <petrm@nvidia.com>,
 "Edward Cree" <ecree.xilinx@gmail.com>,
 "Maxime Coquelin" <mcoquelin.stm32@gmail.com>,
 "Alexandre Torgue" <alexandre.torgue@foss.st.com>,
 "Arend van Spriel" <arend.vanspriel@broadcom.com>,
 "Miri Korenblit" <miriam.rachel.korenblit@intel.com>,
 "Keith Busch" <kbusch@kernel.org>, "Jens Axboe" <axboe@kernel.dk>,
 "Christoph Hellwig" <hch@lst.de>, "Sagi Grimberg" <sagi@grimberg.me>,
 "Chaitanya Kulkarni" <kch@nvidia.com>,
 "Saurav Kashyap" <skashyap@marvell.com>,
 "Javed Hasan" <jhasan@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com,
 "James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 "Nilesh Javali" <njavali@marvell.com>,
 "Manish Rangankar" <mrangankar@marvell.com>,
 "Varun Prakash" <varun@chelsio.com>,
 "Alexander Viro" <viro@zeniv.linux.org.uk>,
 "Christian Brauner" <brauner@kernel.org>, "Jan Kara" <jack@suse.cz>,
 "David Howells" <dhowells@redhat.com>,
 "Marc Dionne" <marc.dionne@auristor.com>,
 "Trond Myklebust" <trondmy@kernel.org>,
 "Anna Schumaker" <anna@kernel.org>, "Chuck Lever" <cel@kernel.org>,
 "Jeff Layton" <jlayton@kernel.org>, NeilBrown <neil@brown.name>,
 "Olga Kornievskaia" <okorniev@redhat.com>,
 "Dai Ngo" <Dai.Ngo@oracle.com>, "Tom Talpey" <tom@talpey.com>,
 "Marek Lindner" <marek.lindner@mailbox.org>,
 "Simon Wunderlich" <sw@simonwunderlich.de>,
 "Antonio Quartulli" <antonio@mandelbit.com>,
 "Sven Eckelmann" <sven@narfation.org>,
 "Nikolay Aleksandrov" <razor@blackwall.org>,
 "Pablo Neira Ayuso" <pablo@netfilter.org>,
 "Florian Westphal" <fw@strlen.de>, "Phil Sutter" <phil@nwl.cc>,
 "Johannes Berg" <johannes@sipsolutions.net>,
 "Matthieu Baerts" <matttbe@kernel.org>,
 "Mat Martineau" <martineau@kernel.org>,
 "Geliang Tang" <geliang@kernel.org>, "Julian Anastasov" <ja@ssi.bg>,
 "Aaron Conole" <aconole@redhat.com>,
 "Eelco Chaudron" <echaudro@redhat.com>,
 "Ilya Maximets" <i.maximets@ovn.org>,
 "Allison Henderson" <achender@kernel.org>,
 "Jamal Hadi Salim" <jhs@mojatatu.com>, "Jiri Pirko" <jiri@resnulli.us>,
 "Marcelo Ricardo Leitner" <marcelo.leitner@gmail.com>,
 "Xin Long" <lucien.xin@gmail.com>,
 "D. Wythe" <alibuda@linux.alibaba.com>,
 "Dust Li" <dust.li@linux.alibaba.com>,
 "Sidraya Jayagond" <sidraya@linux.ibm.com>,
 "Wenjia Zhang" <wenjia@linux.ibm.com>,
 "Mahanta Jambigi" <mjambigi@linux.ibm.com>,
 "Tony Lu" <tonylu@linux.alibaba.com>, "Wen Gu" <guwen@linux.alibaba.com>,
 "Jon Maloy" <jmaloy@redhat.com>,
 "Steffen Klassert" <steffen.klassert@secunet.com>,
 "Herbert Xu" <herbert@gondor.apana.org.au>,
 "Vikas Gupta" <vikas.gupta@broadcom.com>,
 "Rajashekar Hudumula" <rajashekar.hudumula@broadcom.com>,
 "Justin Chen" <justin.chen@broadcom.com>,
 "Bhargava Marreddy" <bhargava.marreddy@broadcom.com>,
 "Nicolai Buchwitz" <nb@tipi-net.de>,
 "Florian Fainelli" <florian.fainelli@broadcom.com>,
 "Heiner Kallweit" <hkallweit1@gmail.com>,
 "Krzysztof Kozlowski" <krzk@kernel.org>,
 "Russell King" <rmk+kernel@armlinux.org.uk>, "Yao Zi" <me@ziyao.cc>,
 "Yanteng Si" <siyanteng@cqsoftware.com.cn>,
 "Maxime Chevallier" <maxime.chevallier@bootlin.com>,
 "Julian Braha" <julianbraha@gmail.com>,
 "Joey Lu" <a0987203069@gmail.com>,
 "Shangjuan Wei" <weishangjuan@eswincomputing.com>,
 "Chen-Yu Tsai" <wens@kernel.org>, "Inochi Amaoto" <inochiama@gmail.com>,
 "Lad, Prabhakar" <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 "Qingfang Deng" <qingfang.deng@linux.dev>,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
 "Eric Biggers" <ebiggers@kernel.org>,
 "Ethan Nelson-Moore" <enelsonmoore@gmail.com>,
 "Ard Biesheuvel" <ardb@kernel.org>,
 "Dmitry Safonov" <0x7f454c46@gmail.com>,
 "Kuniyuki Iwashima" <kuniyu@google.com>, "Alyssa Ross" <hi@alyssa.is>,
 linux-rdma@vger.kernel.org, linux-kernel@vger.kernel.org,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "open list:NETRONOME ETHERNET DRIVERS" <oss-drivers@corigine.com>,
 linux-net-drivers@amd.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-wireless@vger.kernel.org,
 brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com,
 linux-nvme@lists.infradead.org, linux-scsi@vger.kernel.org,
 target-devel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-nfs@vger.kernel.org,
 b.a.t.m.a.n@lists.open-mesh.org,
 "open list:ETHERNET BRIDGE" <bridge@lists.linux.dev>,
 netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
 mptcp@lists.linux.dev, lvs-devel@vger.kernel.org, dev@openvswitch.org,
 rds-devel@oss.oracle.com, linux-sctp@vger.kernel.org,
 linux-s390@vger.kernel.org,
 "open list:TIPC NETWORK LAYER" <tipc-discussion@lists.sourceforge.net>
Message-Id: <12ffac6a-649a-4e4a-8d12-0b48171e1d95@app.fastmail.com>
In-Reply-To: <20260712013941.4570-2-fmancera@suse.de>
References: <20260712013941.4570-1-fmancera@suse.de>
 <20260712013941.4570-2-fmancera@suse.de>
Subject: Re: [PATCH 01/13 RFC net-next] net: ipv4: introduce CONFIG_IPV4 to
 decouple
 the IPv4 stack
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
X-MailFrom: arnd@arndb.de
X-Mailman-Rule-Hits: max-recipients
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; header-match-b.a.t.m.a.n.lists.open-mesh.org-0;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-1;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-2;
 header-match-b.a.t.m.a.n.lists.open-mesh.org-3; emergency; member-moderation;
 nonmember-moderation; administrivia; implicit-dest; max-size;
 news-moderation; no-subject; digests; suspicious-header
Message-ID-Hash: N3FLL7XPBCPW2N6WFHMEVQJH2RKD5FUY
X-Message-ID-Hash: N3FLL7XPBCPW2N6WFHMEVQJH2RKD5FUY
X-Mailman-Approved-At: Sun, 12 Jul 2026 13:03:37 +0200
X-Mailman-Version: 3.3.10
Precedence: list
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/N3FLL7XPBCPW2N6WFHMEVQJH2RKD5FUY/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.50 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[open-mesh.org:s=20121:i=2];
	DMARC_POLICY_ALLOW(-0.50)[arndb.de,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[arndb.de:s=fm1,messagingengine.com:s=fm2];
	MIME_GOOD(-0.10)[text/plain];
	XM_UA_NO_VERSION(0.01)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,b.a.t.m.a.n=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_RECIPIENTS(0.00)[m:fmancera@suse.de,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:dsahern@kernel.org,m:horms@kernel.org,m:idosch@nvidia.com,m:jgg@ziepe.ca,m:leon@kernel.org,m:andrew+netdev@lunn.ch,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:enachman@marvell.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:petrm@nvidia.com,m:ecree.xilinx@gmail.com,m:mcoquelin.stm32@gmail.com,m:alexandre.torgue@foss.st.com,m:arend.vanspriel@broadcom.com,m:miriam.rachel.korenblit@intel.com,m:kbusch@kernel.org,m:axboe@kernel.dk,m:hch@lst.de,m:sagi@grimberg.me,m:kch@nvidia.com,m:skashyap@marvell.com,m:jhasan@marvell.com,m:GR-QLogic-Storage-Upstream@marvell.com,m:James.Bottomley@hansenpartnership.com,m:martin.petersen@oracle.com,m:njavali@marvell.com,m:mrangankar@marvell.com,m:varun@chelsio.com,m:viro@zeniv.linux.org.uk,m:brauner@kernel.org,m:jack@suse.cz,m:dhowells@redhat.com,m:marc.dionne@auristor.co
 m,m:trondmy@kernel.org,m:anna@kernel.org,m:cel@kernel.org,m:jlayton@kernel.org,m:neil@brown.name,m:okorniev@redhat.com,m:Dai.Ngo@oracle.com,m:tom@talpey.com,m:marek.lindner@mailbox.org,m:sw@simonwunderlich.de,m:antonio@mandelbit.com,m:sven@narfation.org,m:razor@blackwall.org,m:pablo@netfilter.org,m:fw@strlen.de,m:phil@nwl.cc,m:johannes@sipsolutions.net,m:matttbe@kernel.org,m:martineau@kernel.org,m:geliang@kernel.org,m:ja@ssi.bg,m:aconole@redhat.com,m:echaudro@redhat.com,m:i.maximets@ovn.org,m:achender@kernel.org,m:jhs@mojatatu.com,m:jiri@resnulli.us,m:marcelo.leitner@gmail.com,m:lucien.xin@gmail.com,m:alibuda@linux.alibaba.com,m:dust.li@linux.alibaba.com,m:sidraya@linux.ibm.com,m:wenjia@linux.ibm.com,m:mjambigi@linux.ibm.com,m:tonylu@linux.alibaba.com,m:guwen@linux.alibaba.com,m:jmaloy@redhat.com,m:steffen.klassert@secunet.com,m:herbert@gondor.apana.org.au,m:vikas.gupta@broadcom.com,m:rajashekar.hudumula@broadcom.com,m:justin.chen@broadcom.com,m:bhargava.marreddy@broadcom.com,m:nb@t
 ipi-net.de,m:florian.fainelli@broadcom.com,m:hkallweit1@gmail.com,m:krzk@kernel.org,m:rmk+kernel@armlinux.org.uk,m:me@ziyao.cc,m:siyanteng@cqsoftware.com.cn,m:maxime.chevallier@bootlin.com,m:julianbraha@gmail.com,m:a0987203069@gmail.com,m:weishangjuan@eswincomputing.com,m:wens@kernel.org,m:inochiama@gmail.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[arnd@arndb.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	TO_DN_SOME(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,nvidia.com,ziepe.ca,lunn.ch,intel.com,marvell.com,gmail.com,foss.st.com,broadcom.com,kernel.dk,lst.de,grimberg.me,hansenpartnership.com,oracle.com,chelsio.com,zeniv.linux.org.uk,suse.cz,auristor.com,brown.name,talpey.com,mailbox.org,simonwunderlich.de,mandelbit.com,narfation.org,blackwall.org,netfilter.org,strlen.de,nwl.cc,sipsolutions.net,ssi.bg,ovn.org,mojatatu.com,resnulli.us,linux.alibaba.com,linux.ibm.com,secunet.com,gondor.apana.org.au,tipi-net.de,armlinux.org.uk,ziyao.cc,cqsoftware.com.cn,bootlin.com,eswincomputing.com,bp.renesas.com,linux.dev,linuxfoundation.org,alyssa.is,vger.kernel.org,lists.osuosl.org,corigine.com,amd.com,st-md-mailman.stormreply.com,lists.infradead.org,lists.linux.dev,lists.open-mesh.org,openvswitch.org,oss.oracle.com,lists.sourceforge.net];
	DKIM_TRACE(0.00)[arndb.de:+,messagingengine.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[arnd@arndb.de,b.a.t.m.a.n-bounces@lists.open-mesh.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[134];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:24940, ipnet:136.243.0.0/16, country:DE];
	TAGGED_RCPT(0.00)[b.a.t.m.a.n,netdev,kernel];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arndb.de:from_mime,arndb.de:dkim,app.fastmail.com:mid,messagingengine.com:dkim,diktynna.open-mesh.org:helo,diktynna.open-mesh.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C0F46744751

On Sun, Jul 12, 2026, at 03:38, Fernando Fernandez Mancera wrote:
> Historically, the IPv4 protocol has been linked to the core INET
> subsystem. Because shared infrastructure like the TCP/UDP engine,
> routing or INET hashtables live inside net/ipv4/, it has been impossible
> to compile a kernel with only IPv6 support.
>
> This patch introduces the CONFIG_IPV4 Kconfig symbol, which is set to
> 'def_bool y' for now. This does not allow to completely disable the
> IPv4 stack yet but it lays the necessary build-system work for that
> goal.

I expect this will cause additional (trivial) build regression in the
next step when randconfig builds run into obscure corner cases, either
with INET=y IPV4=n IPV6=y or with INET=y IPV4=n IPV6=n.

I can probably give your patch (with IPV4 visible or disabled) an
early go on the randconfig tree to find these more quickly.
If I run into regressions, should I just add more 'depends on IPV4',
or do you have other plans?

Should we have some logic to ensure that at least one of IPV4 or
IPV6 is enabled? I think this would work

config IPV4
      bool "The IPv4 protocol" if IPV6
      default INET

which only allows turning IPV4 off if IPV6 has enabled.

       Arnd
