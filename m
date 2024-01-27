Return-Path: <b.a.t.m.a.n-bounces+lists+b.a.t.m.a.n=lfdr.de@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id E753E83ED1A
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 27 Jan 2024 13:54:09 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id C3D5484132
	for <lists+b.a.t.m.a.n@lfdr.de>; Sat, 27 Jan 2024 13:54:09 +0100 (CET)
ARC-Seal: i=2; cv=pass; a=rsa-sha256; d=open-mesh.org; s=20121;
 t=1706360049;
 b=oRd77RiDp8e+KSrCnpjF7irNGaz97KNMbTrbTmDKrAHzxWFj++dO+eCh0g9NpR2AY1aZ1
 5wcgrFqRQULs5JUfShS7TpiK+qEzCsR0c8vMBUjAGMkzx3/omEkVP190eydCxuDkDS8ZD3S
 VZM6qgWa1EZgA8mvgZHJ7jY8QS62lyo=
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed;
 d=open-mesh.org; s=20121; t=1706360049; h=from : sender : reply-to :
 subject : date : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=edNpqI2Ax1xBqzK1JgfpbRiTEL/jztpppUzA5TA+nj8=;
 b=J85yW3odG0GdlkCcnoumQ10uTjmDRzu1PTyglKdzT292TaqPoF9DFLMrX4fQ216p68oUT
 Qysogl1M2JTkpMpf5PRJJIIx0XS959QVSzvtNE37Evuc9McHyvfbjRvkKPaW8zgT7dKkhhm
 ITdzsrrryvdxlHaUv0PI/fl6M1ODtls=
ARC-Authentication-Results: i=2; open-mesh.org;
 dkim=pass header.d=narfation.org;
  arc=pass;
  dmarc=pass (Used From Domain Record) header.from=narfation.org
 policy.dmarc=none
Authentication-Results: open-mesh.org; dkim=pass header.d=narfation.org;
 arc=pass;
 dmarc=pass (Used From Domain Record) header.from=narfation.org policy.dmarc=none
Received: from dvalin.narfation.org (dvalin.narfation.org [213.160.73.56])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 8BE1883E6F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Sat, 27 Jan 2024 13:49:42 +0100 (CET)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1706359782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:dkim-signature;
	bh=edNpqI2Ax1xBqzK1JgfpbRiTEL/jztpppUzA5TA+nj8=;
	b=dS6CKPb6XWqL8erMUkiNEJKbBKTZdZ7puw3RSNsQl5/NC0MDPAQYE4mrIzybYIOoLGnhSl
	d1WkzrX01Koc0SfHcFnd8FjN3dJTG9blcNt7zO+/XnkBPdmn/dFyC6J1VX56w9XKiMcOwx
	xjv76HPzcpfV78IUKNYog/uxoiXQdSA=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1706359782; a=rsa-sha256;
	cv=none;
	b=YwRimu4elXOJhwO1tFHeaJq/F1D8GU8tE4TRxLxl/3Zv9qwCO+40SWwia1vEbZZ4pSzN7r
	2TUlH/jbULD68kn56ahga/p60bjBim2fReEhFzSpMstM9Btg7sm8A9XL4hAPsbQ2iJ9L1f
	UgaplPi1j/VqJuYYHXgqjLykWPacWeI=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=pass header.d=narfation.org header.s=20121 header.b="f/flL2y2";
	spf=pass (diktynna.open-mesh.org: domain of sven@narfation.org designates
 213.160.73.56 as permitted sender) smtp.mailfrom=sven@narfation.org;
	dmarc=pass (policy=none) header.from=narfation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
	s=20121; t=1706359782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=edNpqI2Ax1xBqzK1JgfpbRiTEL/jztpppUzA5TA+nj8=;
	b=f/flL2y2/0i/J7aFsbruIQh6nTJUWH+x8o9zQdR9yYsFdqfxWhh9n4mUjvuHlUVJAENwsL
	C6E7gqiLEVd5QejXwMzwlKYDqrvIeVuCGfcaQZBJ9/31AoScgjKkjpc2Z89iAqpSDFy/Ot
	HFOpUotYDLGPkk8NiI0LnoTWQblV9kM=
From: Sven Eckelmann <sven@narfation.org>
Date: Sat, 27 Jan 2024 13:49:04 +0100
Subject: [PATCH 6/6] batctl: tcpdump: Fix ICMPv4 inner IPv4 header length
 check
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240127-tcpdump_fuzzing-v1-6-fbc1e1d3fec1@narfation.org>
References: <20240127-tcpdump_fuzzing-v1-0-fbc1e1d3fec1@narfation.org>
In-Reply-To: <20240127-tcpdump_fuzzing-v1-0-fbc1e1d3fec1@narfation.org>
To: b.a.t.m.a.n@lists.open-mesh.org
Cc: Sven Eckelmann <sven@narfation.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1895; i=sven@narfation.org;
 h=from:subject:message-id; bh=gmzOh0dnTIBpHz2s9fHke3/y3973kMD3xriE6HPSScc=;
 b=owEBbQKS/ZANAwAKAV2HCgfBJntGAcsmYgBltPvilNM1O/6uNnRUSYIepWDzyM96MviPBk8MW
 aDtVPzoVxyJAjMEAAEKAB0WIQQXXSuHYSVz3OMy4AJdhwoHwSZ7RgUCZbT74gAKCRBdhwoHwSZ7
 RhdnD/wLIjFQsd36EAJJeGP97uYRXlSr9iXtG3swC+17IUMUR5FtjHHWrviMCB1bFvhGg7St4ik
 FcisgPgfb15Xk5z23WgXaGva7LnI9OQAoQD6L+a+IGXJyPujHGpHxt0T5SOqE8VUHLD861gZg52
 8tQ6fDHBkaFynzNbEJTdl6RT9Vu+4I6AZt2cZarIjTwaOQnLrWklkS2maV1tTDKyLiXN0eaHRL9
 jxgBp41Kmwi1jAwSlg95zNSWFDXErLqre8n7UKSQL+7Xip+VNxMCPharUj8Kj6kv9a5YaoBY/Te
 sSv8R1qkph/n8KlXHziLTyhLyE9L5y3iRQ6uVxG6TTPeYSdjpL1JNbksJsI0v4veeGatyBU9IWr
 H/Ebeqd9eo3otzxsD0NmoLY7WUB3ueaiOJXUmYfL8Oa8R+pi9uVkmV515/P2UwM5KZCHoMJ2p8j
 b1K5/rXZP5he18KN7UR7W3JGGsUMKQgDuqzTlJ08MrJmvENV6VRGZnYIlWjlFvYrUIKL+OFwsqY
 dwyj4o6xCDO9bIHxeum1l3utWoBUVgFgJSM1kcSknS+dRC7c8zhxAcMDwpv4/yoXIipnHzRyvE4
 vsAdpXuoVtkCsVh42nWYjaSA864ifTFjVKwU/ABA9cJTb9B53JnEHJfvvg0sDztWsyzAR7yGFKC
 Y5rD+KCCnuqiHvQ==
X-Developer-Key: i=sven@narfation.org; a=openpgp;
 fpr=522D7163831C73A635D12FE5EC371482956781AF
Message-ID-Hash: LYS5SRWWYCMCISYJB4OTDU6GKGSCOZHT
X-Message-ID-Hash: LYS5SRWWYCMCISYJB4OTDU6GKGSCOZHT
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
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/LYS5SRWWYCMCISYJB4OTDU6GKGSCOZHT/>
List-Archive: 
 <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Owner: <mailto:b.a.t.m.a.n-owner@lists.open-mesh.org>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

dump_ip() is doing a length check for the inner (inside ICMP) IPv4 header
length. But it is just assuming that the inner ICMPv4 header has ihl set to
5 - without actually checking for this. The more complex IPv4 header length
check for the outer IPv4 header is missing before it tries to access the
UDP header using the inner ihl IPv4 header length information. So it is
possible that it tries to read outside of the received data.

Fixes: 75d68356f3fa ("[batctl] tcpdump - add basic IPv4 support")
Signed-off-by: Sven Eckelmann <sven@narfation.org>
---
 tcpdump.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/tcpdump.c b/tcpdump.c
index c253755..c6aca27 100644
--- a/tcpdump.c
+++ b/tcpdump.c
@@ -730,12 +730,20 @@ static void dump_ip(unsigned char *packet_buff, ssize_t buff_len,
 				(size_t)buff_len - (iphdr->ihl * 4));
 			break;
 		case ICMP_DEST_UNREACH:
-			LEN_CHECK((size_t)buff_len - (iphdr->ihl * 4) - sizeof(struct icmphdr),
-				sizeof(struct iphdr) + 8, "ICMP DEST_UNREACH");
-
 			switch (icmphdr->code) {
 			case ICMP_PORT_UNREACH:
+				LEN_CHECK((size_t)buff_len - (iphdr->ihl * 4) - sizeof(struct icmphdr),
+					  sizeof(struct iphdr), "ICMP DEST_UNREACH");
+
+				/* validate inner IP header information */
 				tmp_iphdr = (struct iphdr *)(((char *)icmphdr) + sizeof(struct icmphdr));
+				LEN_CHECK((size_t)buff_len - (iphdr->ihl * 4) - sizeof(struct icmphdr),
+					  (size_t)(tmp_iphdr->ihl * 4), "ICMP DEST_UNREACH");
+				LEN_CHECK((size_t)(tmp_iphdr->ihl * 4), sizeof(*iphdr), "ICMP DEST_UNREACH");
+
+				LEN_CHECK((size_t)buff_len - (iphdr->ihl * 4) - sizeof(struct icmphdr) - (tmp_iphdr->ihl * 4),
+					  sizeof(*tmp_udphdr), "ICMP DEST_UNREACH");
+
 				tmp_udphdr = (struct udphdr *)(((char *)tmp_iphdr) + (tmp_iphdr->ihl * 4));
 
 				printf("%s: ICMP ", ipdst);

-- 
2.39.2

