Return-Path: <b.a.t.m.a.n-bounces@lists.open-mesh.org>
X-Original-To: lists+b.a.t.m.a.n@lfdr.de
Delivered-To: lists+b.a.t.m.a.n@lfdr.de
Received: from diktynna.open-mesh.org (diktynna.open-mesh.org [IPv6:2a01:4f8:241:fc1:136:243:236:17])
	by mail.lfdr.de (Postfix) with ESMTPS id C779F1647A3
	for <lists+b.a.t.m.a.n@lfdr.de>; Wed, 19 Feb 2020 16:00:52 +0100 (CET)
Received: from diktynna.open-mesh.org (localhost [IPv6:::1])
	by diktynna.open-mesh.org (Postfix) with ESMTP id 427D280A06;
	Wed, 19 Feb 2020 16:00:50 +0100 (CET)
Received: from ory.petesbox.net (ory.petesbox.net [62.210.252.27])
 by diktynna.open-mesh.org (Postfix) with ESMTPS id AB3B580257
 for <b.a.t.m.a.n@lists.open-mesh.org>; Wed, 19 Feb 2020 16:00:40 +0100 (CET)
Received: by ory.petesbox.net (Postfix, from userid 326)
 id 3A3E440551; Wed, 19 Feb 2020 10:00:40 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
 t=1582124440; bh=0lSMoWGvZjBpeVvD8lYGLVVEEtEM5d2iV0db2GKYXWI=;
 h=Reply-To:Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=sB0Dse8TZziy07fx/8+jOeemTj+baDNcxpvMNJzO3KnvBp5YValEVl64COxd837fU
 ZonBsPIIQDNWvDXZreaoQS6s2hmPg6vRPxRDoHmTUkTtKQhqCDLVLMOSy5UURyg6IU
 SP9e8qw760SvL9iO4nMZ0ijqEqeK9D+eQLl5rTYYDCOqze573tcug7FbF2jJOYmQjI
 vATXnZO/Xl9YjK+dihocqWjfpReXJZEU4tuystRIAHKrUw5I5YkMru2RgukFUP+eSy
 LsYRO0lxRdaLMla1ByELT6iPC82xw8fltY+TKHq66Ck07DmxyRgjeBtzavbD2mldYW
 XX1ELuctptJow==
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ory.petesbox.net
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=4.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.2
Received: from [192.168.2.45] (unknown [38.21.219.50])
 by ory.petesbox.net (Postfix) with ESMTPSA id F2AC640551;
 Wed, 19 Feb 2020 10:00:36 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed; d=petesbox.net; s=ory;
 t=1582124437; bh=0lSMoWGvZjBpeVvD8lYGLVVEEtEM5d2iV0db2GKYXWI=;
 h=Reply-To:Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=UUGaiPZFd2RiwgSkpmVtmsNYXkt81J612LYfoltEXjqJhUGruzlPDS+iZW76Qflel
 3sCuACbQCQfcNLTZfUjTiXJdUbVkFtMb5ipjA6dlc9ajNLeAm4NP0MK5ZvhsqEIvL9
 jwMheDVUF9+6t1aVKy02AJSu0ALmCtcO8Kvj3BszcAh6m4/wm7oEeeCsCz8xxpXByV
 aQz3cv4NK1C18m4yARE3nsrvr5bLaD8SrFbbZAZpygtRQg8CxNZCNKRd79HQdak5E9
 ep8Pk8wFS4R0m7Lf5wct1KKDVfuT5lGYqepifhhK/pLXgeuMHqGa9ynJxa8RMfEsxV
 t+GVN4lgsw+xg==
Subject: Re: can't find logged information
To: Simon Wunderlich <sw@simonwunderlich.de>
References: <24aa48bb-8f52-78be-28df-98ec2e2a054b@coolheads.com>
 <1851274.gzzsXW5Q3G@prime>
 <a687012a-8857-22f3-0623-d82bad19e7bc@coolheads.com>
 <2230258.gT3E0N9OL2@prime>
From: Steve Newcomb <srn@coolheads.com>
Message-ID: <e8843ba8-f0b4-728f-eebd-5ca55ac2828b@coolheads.com>
Date: Wed, 19 Feb 2020 10:00:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <2230258.gT3E0N9OL2@prime>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=open-mesh.org; 
 s=20121; t=1582124440;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=0lSMoWGvZjBpeVvD8lYGLVVEEtEM5d2iV0db2GKYXWI=;
 b=n5zBh5doqi1oYZRKfJy9255txobmvfJhek3hdZq+Az8E8WlFoW/6RFmGPEvodLlef9BeIx
 OlfHH8XZQnJD0wiNR88PGB1uEHduI+4uAlwU8MUfe18qQB3DL9CSbTDM/7mmbK1/0/oza0
 Yk3WqQsOkPkDqwFb7JJSiht/VJeFeUg=
ARC-Seal: i=1; s=20121; d=open-mesh.org; t=1582124440; a=rsa-sha256; cv=none;
 b=2XW+5c58YAFpwfS2Enh2omZ9opAIDRkPGFL1iGDFB6av8BmalLwCfROMqqIvuEIeOLFP+i
 N30lb7A2f539V6IMm34fOD6HIxXHWYPLJhFKQl0IR4tg5KQsQBpU4yRlwwdc18hgpfico1
 RuAmlkf5DHg35GfCHyHGb2ob4KDZixA=
ARC-Authentication-Results: i=1; diktynna.open-mesh.org;
 dkim=pass header.d=petesbox.net header.s=ory header.b=sB0Dse8T;
 dkim=fail (rsa verify failed) header.d=petesbox.net header.s=ory
 header.b=UUGaiPZF; 
 spf=pass (diktynna.open-mesh.org: domain of srn@coolheads.com designates
 62.210.252.27 as permitted sender) smtp.mailfrom=srn@coolheads.com
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
Cc: b.a.t.m.a.n@lists.open-mesh.org
Errors-To: b.a.t.m.a.n-bounces@lists.open-mesh.org
Sender: "B.A.T.M.A.N" <b.a.t.m.a.n-bounces@lists.open-mesh.org>

I'm very grateful for your very helpful attention to my bizarre problem, 
Simon.

Two days ago, my efforts to instrument the nodes had the weird 
side-effect of making the problem go away.  So now I have no problem; 
only the mystery remains, and I have little hope of resolving it.

For the record, below are some details that seem relevant, at least to me.



On 2/19/20 4:50 AM, Simon Wunderlich wrote:
>
>> -----------------------------------------------------------------------
>>
>> When nodes become unreachable, they do so only partially.  Consider this
>> weirdness I encountered two days ago:  Given nodes a, b, c, d, from the
>> perspective of a, d has disappeared; in other words, "a# batctl ping d"
>> doesn't work.  But I ssh'd from a to b, then from b to c, then from c to
>> d, all successfully.  And "a# batctl ping d" still wasn't working, even
>> though I was talking to d through that chain of ssh pipes.  Any ideas on
>> what that might mean?  (When I reboot a -- the gateway -- everything
>> always works again, usually for many hours, but never as long as a whole
>> day.)
> Hmm, that's strange indeed. Did you have good connection between all those
> devices? There is a certain "horizon", e.g. if you have many weak links in a
> daisy chain the the OGMs are dropped before they are reaching the end of the
> path.
>
> Did you see node D in the originator table of node A?
As discussed below, when I added instrumentation, the problem 
disappeared.  (*insert muffled scream here*)
>
>> ----------------------------------------------------------------------
>>
>> Do I have a problem because the two meshes, and everything connected to
>> them, all share the same LAN?  I note "received a claim frame from
>> another group" in the above log excerpt.  (I don't know what that means,
>> but I'm guessing that the two meshes are getting each other's
>> maintenance traffic.)  Should the two meshes be separate subnets?
> It's possible and perfectly fine if you have two meshes connected to the same
> LAN like this:
>
> https://www.open-mesh.org/projects/batman-adv/wiki/Bridge-loop-avoidance-Testcases#Two-meshes-connected-by-one-LAN
>
> Just make sure that the meshes are properly disconnected and not rejoin from
> time to time (e.g. by having different SSIDs)
I think I had missed this page.  Thanks for pointing it out.
>
>> In a similar vein: Should each node be running its own subnet?
>>
>> ----------------------------------------------------------------------
>>
>> Should I try changing all nodes over to BATMAN_V, rebooting them all,
>> and hoping they re-establish contact?  (It would be massively
>> inconvenient to have to reset them all physically.)
> No, BATMAN V will not magically fix this.
Then I won't switch to BATMAN_V.  "If it ain't broke, don't fix it."
>
>> ----------------------------------------------------------------------
>>
>> Should I try turning off bridge loop avoidance?
> bridge loop avoidance should be on as soon as you have any two nodes connected
> to the same LAN and mesh at one time.
Then I guess I don't need BLA.  I'm tempted to turn it off just to avoid 
the overhead, because only the gateways have wired access to the LAN, 
and all other nodes have only their respective meshes.
>
> I think we should work on your a - b - c - d chain and find out why a can't
> talk to d. That seems like the most obvious symptom.
I would do that if it were still broken!

Here's what I did, in some detail: rosepark dot us hash Feb182020



