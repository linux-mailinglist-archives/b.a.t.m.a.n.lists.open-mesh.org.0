Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id 17581F4526
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  8 Nov 2019 11:59:10 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id 5499D80C1F;
	Fri,  8 Nov 2019 11:59:01 +0100 (CET)
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by open-mesh.org (Postfix) with ESMTPS id 89A1080089
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  8 Nov 2019 11:58:56 +0100 (CET)
Received: by mail-pg1-x52f.google.com with SMTP id 15so3724553pgh.5
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri, 08 Nov 2019 02:58:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=reply-to:to:from:subject:message-id:date:user-agent:mime-version
 :content-transfer-encoding:content-language;
 bh=FOwBvDMQXRaz1ZMo5mvQ+HH8Sa0QSWiO63aAv7WjQL8=;
 b=qrnyw/GHby07btrNrkwYaWgudA9zqmcZ2zOZaW0LXzBzub0/KBHcNgje9awC+dgqiy
 k38UaRLrWIDjDSyPpmdKLIXHTCuw/zwvU83aAZHHcSapsoMD8CDn1JO4270uosVAm1FK
 OQblluUKzbizurPyfMIlkyZkNNGD0QOsYKP2B5nICptrYDV2zayFFC8cEcuoM2o0ECZm
 bnxboa5crsOnr9qQQ34bnWSbySPB8b/dVfi04zLahbZSaZcji0x5xJ3mpLYrM1K8dVxM
 /NnMSSUpXDes1PzIQqTqP0wAsQERqFIsMiEwkndNDxwGfaig3P7zvai/MqqPkPxBLuBC
 MvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:to:from:subject:message-id:date
 :user-agent:mime-version:content-transfer-encoding:content-language;
 bh=FOwBvDMQXRaz1ZMo5mvQ+HH8Sa0QSWiO63aAv7WjQL8=;
 b=DXdBO7DKrenUNChm9O3N8WrCjnmClSfxdzR9MQGMZNZv+YrrAmwgK/pYxeWPlUVd5t
 fWcM5YQYpKyvhMQrZHJR2hLcn7cC/dSNvAcTAyXx/hZmtfCBvMyatNMqTFGHScc4Sjf+
 dwsFGlfc6AsyNInr6o4OnMY7INdRI6r4fQ7Twjm3TgYzVvyw12FmnagMxWViWM9M0nw+
 ud7nKFLRTnJP1GiL2ov5TarF1BSgfTJREo6WvZTw9N1w3LW/euKTFlNho/S4WACn+1jj
 pGoMw4OLFI4cJT1WZLgcjeQ2vqZeJfB1NC6Ix0BfpILUFv4P8ujIJB8iTSfUIVWz5YIN
 Lwfg==
X-Gm-Message-State: APjAAAVG8AfYOslXP2ACN5OL3+dflFd3VokVLxTrg5sRu+af0BhGckSv
 Jn1D+XAEQ7timRoyQBWYeORs08Hce64=
X-Google-Smtp-Source: APXvYqyf4eTTHMf5YO5EnqPy1cZgY6MD/DeqIcVfcy/Hw6igfQwiDVQ5pg1XXI6EllyvP0pZOYZTlQ==
X-Received: by 2002:a17:902:9042:: with SMTP id
 w2mr10086654plz.323.1573210277749; 
 Fri, 08 Nov 2019 02:51:17 -0800 (PST)
Received: from [192.168.42.10] ([157.245.207.76])
 by smtp.gmail.com with ESMTPSA id c16sm5398422pfo.34.2019.11.08.02.51.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 08 Nov 2019 02:51:17 -0800 (PST)
To: b.a.t.m.a.n@lists.open-mesh.org, Simon Wunderlich
 <sw@simonwunderlich.de>, Sven Eckelmann <sven@narfation.org>
From: Xuebing Wang <xbing6@gmail.com>
Subject: Any suggestions about configuring batman-adv gateways + modems
Message-ID: <4aaa0e89-d428-a7c9-ef47-67dfef8e1411@gmail.com>
Date: Fri, 8 Nov 2019 18:51:14 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1573210736;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:dkim-signature;
 bh=FOwBvDMQXRaz1ZMo5mvQ+HH8Sa0QSWiO63aAv7WjQL8=;
 b=o2HFCxVAnv7jCn7iDdkTFk3r/N9UzZAD6i2faLBJrdxxhPPFZbi3rUDeJenJCC2QVARi3M
 ctX9uiRnhnueeeXCTa7nIUC0J5X54eeiIusIku87rhIRPss72YzBBTbVSIVvfuBA2sq/cO
 iQMalaq4q2M55prAJ4gZQ2QYElMGlpE=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1573210736; a=rsa-sha256; cv=none;
 b=CS0UvBg4KHfDLNwgo94ERT/Qtokz/S8ac+3byFrsfSOkvMQo25k56ttIC69LRsVtBDJjZN
 HOjeYi1FkOS9HdkFdnZcAh4U32lqkApbrGg8M3vF4tTybHF6uAt8c3XIE5NjzhEO5XawSe
 5qnG9YN/uBdUaPegFgWnZtDY2H7mR74=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=gmail.com header.s=20161025 header.b=qrnyw/GH;
 spf=pass (open-mesh.org: domain of xbing6@gmail.com designates
 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=xbing6@gmail.com
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
Reply-To: xbing6@gmail.com,
 The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

Hi batman-adv community,

We have been building openwrt 15.05 + batman-adv mesh network for over 2 
years, they work great.

We are planning to use batman-adv gateways + 4G modems. For an example: 
our mesh network is with 20 nodes, 3 nodes have 4G modems connected.

1) My first thought is to use batman-adv gateway (with 4G modem 
connected) as dhcp server, and forward batman-adv interface to wan 
interface (modem).
1.1)  But, there is an issue with this setup. Once a modem is down, 
nodes that are connected to this batman-adv gateway (with modem) can not 
automatically "roam" to another batman-adv gateway (with good modem 
connection).
1.2)  This behavior is expected, right?

2) My second thought is to bridge batman-adv interface and wan interface 
(modem). This works great, I do not see issue (1.1) above.
-  By this setup, all batman-adv clients get ip via dhcp and via modem.
2.1)  Is this the suggested setup to use batman-adv gateways?

3) When I bridge batman-adv interface with other interface (as in step 2 
above), can I use batman-adv interface via *ipv6* to ping other 
batman-adv nodes?

Thanks.
Xuebing Wang

