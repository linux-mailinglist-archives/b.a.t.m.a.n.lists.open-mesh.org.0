Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from open-mesh.org (open-mesh.org [78.46.248.236])
	by mail.lfdr.de (Postfix) with ESMTPS id CB462155A81
	for <lists+b.a.t.m.a.n@lfdr.de>; Fri,  7 Feb 2020 16:18:32 +0100 (CET)
Received: from open-mesh.org (localhost [IPv6:::1])
	by open-mesh.org (Postfix) with ESMTP id CFBD580286;
	Fri,  7 Feb 2020 16:18:25 +0100 (CET)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
 by open-mesh.org (Postfix) with ESMTPS id 98EF8801CB
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  7 Feb 2020 16:18:22 +0100 (CET)
Received: by ory.petesbox.net (Postfix, from userid 326)
 id 316AD406FC; Fri,  7 Feb 2020 10:18:22 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
 t=1581088702; bh=1r1ZoaDEuslXuew8C1IGp/pQKwj4A1fnef2lz9sKBXY=;
 h=Subject:Reply-To:References:To:From:Date:In-Reply-To:From;
 b=UnfZ6ibZH8nVKhPSfxuKiGD07UNOMpWsQ9VCSTbmTWljTG59jFlsv1swF57Iz/K1r
 FRiu8XifZurvwCBNjA0KdQs8AM32LSDK75zmBoiZFTYNpnZbfbqtqqvgYlWnT/WEQM
 fgmJXUvNDD15hJTlQ3xZaW38e/XBfxwC8wgWnMzGSPMfSCWlPAYBu6NLvQoUZjf9Iq
 f1oHILRTnDM+RXztKwTFVzUEAK7gWeozxX1X/xvk0VvYhBMfzS6gFGuQgr6nvwLjqY
 4Ey1LZWLSJHCkx6ZKlb7sHUzgqRdxWJ8jfUrvh4/+P7XM+T+CSiYGRVPGTzwQHKFV9
 E+xQsgwlN41jg==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.2
Received: from [192.168.2.25] (unknown [38.21.217.71])
 by ory.petesbox.net (Postfix) with ESMTPSA id 0C7A240326
 for <b.a.t.m.a.n@lists.open-mesh.org>; Fri,  7 Feb 2020 10:18:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
 t=1581088700; bh=1r1ZoaDEuslXuew8C1IGp/pQKwj4A1fnef2lz9sKBXY=;
 h=Subject:Reply-To:References:To:From:Date:In-Reply-To:From;
 b=Fj60bRPm0dzS2HF9n3wCaBq84wnwFugczvGCREE52NxMX/d/CNylLwVg6ei7DkRIu
 aDC/Rd/ySYZAI4DjWTaAB07xvN8UeGkaJl6EePJNiziqJN80qb7CBuYpQSkVhtcZTI
 m7/MtSKOA83keTJz6+mF+hpIiYjufdJ9te8zrFE8zLBLQyiL15MYeWUaTb4JfusAoB
 eBbJmzfi6AO6045Hse7Hu4VzM7QONeN+oBdwQCZWZdxhzFNMSzg1NDzZ41rfjrELf3
 k1OPClSNJqV8RIsL94BBhhUL+P3ZdN6UzY9JpSEkl7e1qPkltY6dgSiRjW3nqqSXhc
 Y++9gt2PJxjTw==
Subject: Re: can't find logged information
References: <24aa48bb-8f52-78be-28df-98ec2e2a054b@coolheads.com>
To: b.a.t.m.a.n@lists.open-mesh.org
From: Steve Newcomb <srn@coolheads.com>
X-Forwarded-Message-Id: <24aa48bb-8f52-78be-28df-98ec2e2a054b@coolheads.com>
Message-ID: <b696db36-b9db-d31a-d8a6-0523f8a0986c@coolheads.com>
Date: Fri, 7 Feb 2020 10:18:19 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <24aa48bb-8f52-78be-28df-98ec2e2a054b@coolheads.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1581088702;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=1r1ZoaDEuslXuew8C1IGp/pQKwj4A1fnef2lz9sKBXY=;
 b=thSDOr4dt63s9OGcooN0kECQTZyrc/wZWNgtaHN8C4WgfI+1qoRwNHHRr9sb9YxYCW5oBP
 ze60h+yhqAmB9cykC6BTFIf89WFpK6Y+uTDpW5scn011bt0/yjQOIhlRrIqsEW0/QU7it/
 FB1NF2rDkXZd+PKVJB7fYNq0j+tnAcQ=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1581088702; a=rsa-sha256; cv=none;
 b=3MP/X8YrIyni+wqiGg1IbelucY0lsXWBvfDXiHJrdgoY5/ny0vg1DlNnLJiQjRzTTqOmRP
 IJ1HSwLzVy6xIbGFfccMfa+Ne/PZPf0N/sAEk/bPv/9JjlI6ract/mNH5EStNHcT7WNnbX
 i38QX7YIrALr9Yj7raqeA/a9P2/g4IU=
ARC-Authentication-Results: i=1; open-mesh.org;
 dkim=pass header.d=petesbox.net header.s=ory header.b=UnfZ6ibZ;
 dkim=fail (rsa verify failed) header.d=petesbox.net header.s=ory
 header.b=Fj60bRPm; 
 spf=pass (open-mesh.org: domain of srn@coolheads.com designates 62.210.252.27
 as permitted sender) smtp.mailfrom=srn@coolheads.com
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
Reply-To: srn@coolheads.com,
 The list for a Better Approach To Mobile Ad-hoc Networking
 <b.a.t.m.a.n@lists.open-mesh.org>
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>


On 2/7/20 9:51 AM, Simon Wunderlich wrote:
> On Friday, February 7, 2020 3:13:47 PM CET Steve Newcomb wrote:
>> @rpc152:/tmp/log# echo "$(logread)" | grep batman
>> Thu Feb 6 15:21:13 2020 kern.warn kernel: [174193.938445] batman_adv:
>> [Deprecated]: batctl (pid 22747) Use of debugfs file "nc_nodes".
>> @rpc152:/tmp/log#
>>
>>
>> What have I missed?
> Hi Steve,
>
> you can use "batctl log" to retrieve the log. It will not appear in your
> logread.
Alas, that doesn't work either, and I don't know why:

root@rpc152:~# batctl log
Error - no valid command or debug table specified: log
Usage: batctl [options] command|debug table [parameters]
options:
         -h print this help (or 'batctl <command|debug table> -h' for 
the parameter help)
         -v print version

commands:
         meshif <netdev> aggregation|ag [0|1] display or modify 
aggregation setting
...
>
> When the problem happens, you can also check "iw wlan0 station dump" 
> and other
> debug files (batctl n for neighbors) to find out if the WiFi layer is 
> still
> working. It wouldn't be the first time that actually the WiFi chip or 
> driver
> has a problem, not batman-adv.
I've seen that "batctl n" works, and "iw mesh0 station dump" works, too.

I am arranging for the nodes to send me such mail when things have gone 
awry, but prior to rebooting.  I've written a tiny mail queueing system 
that optionally uses nonvolatile memory for the queue.

