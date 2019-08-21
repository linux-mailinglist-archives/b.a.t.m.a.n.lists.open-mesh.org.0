Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [IPv6:2a01:4f8:141:3341:78:46:248:236])
	by mail.lfdr.de (Postfix) with ESMTPS id D676B97F9C
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 21 Aug 2019 18:04:17 +0200 (CEST)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id C115381EE7;
	Wed, 21 Aug 2019 18:04:13 +0200 (CEST)
Received: from mail.aperture-lab.de (mail.aperture-lab.de [138.201.29.205])
 by open-mesh.org (Postfix) with ESMTPS id 9A7D2803CC
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 21 Aug 2019 18:04:10 +0200 (CEST)
Date: Wed, 21 Aug 2019 18:04:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue; s=2018;
 t=1566403450;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yubnqvOxH5wghrCpYkYGbKsY6Wx8HEC3NSs/FNvj738=;
 b=men9dOn2WkyFDISxnGcZL1Ag1z87egXsSDU6E+Dcq2ZmZC1IabsSOw1nxZY4SZufBhnbl7
 m2FLjcnEzoCjyxbf4OxnAJbf+X004cCH2gU9KlB0FmoG8s0Wt20JpF6DIWqZeT84kogea8
 vRFiqlQufAkxfK5YIyXVewItvjc5ZO5WYEyqt+mX/ewcv/vwpwSPnjeALCDaTF8/N6L5u6
 J5iXufJtexMqu++s/jzB6ERKeTyzV4YTpKuMM+rOhuK/LFaJ0UkWzOiVn6dmbLdSWTMHjd
 InAF0l/yWQWe6QVjvRAMNOQT+m9twI6PsrT68XCdIBLXEmZwrVpNGxaATjwsGg==
From: Linus =?utf-8?Q?L=C3=BCssing?= <linus.luessing@c0d3.blue>
To: The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Subject: Re: [PATCH] batman-adv: Add Sven to MAINTAINERS file
Message-ID: <20190821160407.GG2547@otheros>
References: <20190816082626.11537-1-sw@simonwunderlich.de>
 <955d497a-737e-ef76-8343-eb0524a89792@unstable.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <955d497a-737e-ef76-8343-eb0524a89792@unstable.cc>
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=c0d3.blue;
 s=2018; t=1566403450;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=yubnqvOxH5wghrCpYkYGbKsY6Wx8HEC3NSs/FNvj738=;
 b=OinLBhhpbxw9v/Jca+VR4zsBCt1jznueLl55eu7owyR2K9nfvEE2l2mZDAV+Nl/1cGLEzz
 ocZdHXdK0kevocNLcjWoRPBNoAvinP+FK0tHTuRoDE3kdeSrj1P5y5tSoxKZZL3qE7kdls
 MsVJgMQsDd4oKoE/TokINcPLcjbLjI6JUGhFqZDMMQiZXmLxS/HFKSBqFyedQomIz5f+3f
 eAdUF1btSe8MB3MzKSoS9QzRSxynSJYUx5gA+NAJ1OhS2iPccQ5UwumnEPgJsElAIQ609+
 j4Jde3jtKhZ0RZb3rDdl5h+qE8AjlMgf4mzC/elRyQ0BA/tYwItyAOA7myhSvg==
ARC-Seal: i=1; s=2018; d=c0d3.blue; t=1566403450; a=rsa-sha256; cv=none;
 b=aOmYy1XfRVCsyXP51M1vjxYXVjwr2SZ9BiIRM9E/vLs36uTSu+uwkp75JNQ5t4m7j+TSYo
 HgNyOZ0FfKVlr9n2991kVVGIs8XhvnC6ZahKnsuzEbTrdMiKV1ub2Kusky1nVW22rqNJ5m
 /admC0mT8YSLvZ60To5zFi6yr8nEw5x4RRXuJSiihn/1KNkBQ5SWsaYO45ZU8Uq2tdAfcE
 VZl4Gb9cvkZVHMJH/ISAyQROpX7F5cqlG0XmVe3FDb1Q9KAnjRkamyXZDt55Dob88gRN+P
 cE0Nv9NO/IWOEJ/LSvXgLUzLOP32y/lG7O535qbhtHOaVxUziAsNWZZqW/Sbiw==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
Authentication-Results: ORIGINATING;
 auth=pass smtp.auth=linus.luessing@c0d3.blue
 smtp.mailfrom=linus.luessing@c0d3.blue
X-BeenThere: b.a.t.m.a.n@lists.open-mesh.org
X-Mailman-Version: 2.1.23
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

+1
