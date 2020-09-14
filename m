Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [136.243.236.17])
	by mail.lfdr.de (Postfix) with ESMTPS id B820D2695E5
	for <lists+b.a.t.m.a.n@lfdr.de>; Mon, 14 Sep 2020 21:53:53 +0200 (CEST)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 7E3348027F;
	Mon, 14 Sep 2020 21:53:52 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
	by diktynna.open-mesh.org (Postfix) with ESMTPS id 184658027F
	for <b.a.t.m.a.n@lists.open-mesh.org>; Mon, 14 Sep 2020 21:53:50 +0200 (CEST)
From: =?UTF-8?q?Linus=20L=C3=BCssing?= <linus.luessing@c0d3.blue>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
	t=1600113230;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=d2ddVf1Cf9rHl2yNyJOEValtMGBwp5Aom/RCYaWVr7c=;
	b=BPJgKU26hLDHHdswGSc+Hv+ZnUlFkmi4XT8OHNjxbHrjP1npvEsxdZqWT75aqFAusFWu86
	2L0+ObmivxfKzttN8FQyzQc/7eWklfzdlTjpcECCMca8co3yiD9sDMNb42LSlwQzzYBp2w
	jqsKiwKZFFXKhCBEchc+QZ7PuTemB0YzmXWFg4dFN6fJVbULG3KeoT8dfTyE3N1iIFPlIy
	r4Zv+BpP/4TN5ZVt5ZTUfmTzPeXGlsjAtWLg+qMQb2kaHOeqbGiejeiCJ3Cabuf29oxez0
	NKa889pq+P3X5HGsuXGNk8fzx9Q1IWfybcUwvqNiTmcjKIk0F6Z7QNXasUkBLw==
To: b.a.t.m.a.n@lists.open-mesh.org
Subject: [PATCH maint v5 0/3] batman-adv: mcast: BLA fixes
Date: Mon, 14 Sep 2020 21:53:44 +0200
Message-Id: <20200914195347.10505-1-linus.luessing@c0d3.blue>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=linus.luessing@c0d3.blue smtp.mailfrom=linus.luessing@c0d3.blue
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org;
	s=20121; t=1600113230;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:dkim-signature;
	bh=d2ddVf1Cf9rHl2yNyJOEValtMGBwp5Aom/RCYaWVr7c=;
	b=aAgb/3nt4GH40IBI5tEpyULL6SfwWq4QFjV0HG9YHZbOcrxTkk9zFLpweDugbixxpESqkT
	dnmlsYx86g+z1Ob5Yi9qKVAOrdIEyeBgjUso57XbMGo9QMtJH4gXHxzucGhF5VTZm0MopI
	dfrdEHbthOoGxtBJQimR+usLKuLsmjk=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1600113230; a=rsa-sha256;
	cv=none;
	b=4MakRIXNtWlH7wjKYlAZkJhlcN+Hdh/ohWFpqYWiSegS4i6eshMv59d4di+I2IHwjI7p6y
	M29SJfEtgoRgYOoV2H/8JPMKHAKu/1HVQl7Abo2mXDC9QwEyK8zF83av39kOP3UE5TL/Me
	X2haIgZAoHbZcndDzrTZwhrI5NQZDB8=
ARC-Authentication-Results: i=1;
	diktynna.open-mesh.org;
	dkim=none (invalid DKIM record) header.d=c0d3.blue header.s=2018 header.b=BPJgKU26;
	spf=none (diktynna.open-mesh.org: domain of linus.luessing@c0d3.blue has no SPF policy when checking 138.201.29.205) smtp.mailfrom=linus.luessing@c0d3.blue
Content-Transfer-Encoding: quoted-printable
Message-ID-Hash: GFLKIL4KNKHFAQMBREFCLC6PF2RB63OY
X-Message-ID-Hash: GFLKIL4KNKHFAQMBREFCLC6PF2RB63OY
X-MailFrom: linus.luessing@c0d3.blue
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-b.a.t.m.a.n.lists.open-mesh.org-0; header-match-b.a.t.m.a.n.lists.open-mesh.org-1; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; suspicious-header
X-Mailman-Version: 3.2.1
Precedence: list
Reply-To: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n@lists.open-mesh.org>
List-Id: The list for a Better Approach To Mobile Ad-hoc Networking <b.a.t.m.a.n.lists.open-mesh.org>
Archived-At: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/message/GFLKIL4KNKHFAQMBREFCLC6PF2RB63OY/>
List-Archive: <https://lists.open-mesh.org/mailman3/hyperkitty/list/b.a.t.m.a.n@lists.open-mesh.org/>
List-Help: <mailto:b.a.t.m.a.n-request@lists.open-mesh.org?subject=help>
List-Post: <mailto:b.a.t.m.a.n@lists.open-mesh.org>
List-Subscribe: <mailto:b.a.t.m.a.n-join@lists.open-mesh.org>
List-Unsubscribe: <mailto:b.a.t.m.a.n-leave@lists.open-mesh.org>

These are three fixes for issues which occur when using the batman-adv
multicast-to-unicast feature.

They fix issues when using the multicast-to-unicast conversion
while BLA is enabled and some nodes are sharing the same LAN side. Here
it either causes "just" duplicates in the "good" scenario (Patch 3/3).
But can also cause multiple BLA backbones to send a frame from the mesh
into the same, shared LAN segment (Patch 2/3). Or in the worst case, even
reflect packets back to the host in the shared LAN, which completely
confuses switches/bridges and ICMPv6 Neighbor Discovery (Patch 1/3).

Regards, Linus

---

Changelog v5:
* Patch 3/3:
  - added missing "*" in kernel doc for batadv_bla_check_duplist()

Changelog v4:
* Patch 1/3:
  - fixed build with CONFIG_BATMAN_ADV_MCAST=3Dn
    -> dummy for batadv_mcast_forw_send_orig()
* Patch 2/3:
  - fixed parameters for batadv_bla_rx() with CONFIG_BATMAN_ADV_BLA=3Dn
    (bool is_bcast -> int packet_type)

Changelog v3:
* removed 1/4, as it was already applied
* renamed title (excluded TT, as already applied)

* Patch 1/3:
  - moved bla-backbone check into multicast code:
    -> to stay on the safe side for net, to touch less other code
       paths - the issue was observed specifically for multicast
       and the fix was tested for that
  - added a note regarding implications for mcast-fanout
* Patch 2/3:
  - previous approach was broken, it would break the DHCPv6 gateway
    code; instead distinguish by batadv 3 vs. 4 addr unicast header
  - added some more code comments
  - updated commit message with new approach
* Patch 3/3:
  - made code a bit more verbose and explicit
  - added some more code comments
  - added missing kernel doc for "orig" parameter to
    new batadv_bla_check_duplist()

Changelog v2:
* Adding "Fixes:" lines
