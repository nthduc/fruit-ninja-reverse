.class Lcom/facebook/unity/FBDialogUtils;
.super Ljava/lang/Object;
.source "FBDialogUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFeedContentBuilder(Landroid/os/Bundle;)Lcom/facebook/share/internal/ShareFeedContent$Builder;
    .registers 4

    .line 54
    new-instance v0, Lcom/facebook/share/internal/ShareFeedContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/internal/ShareFeedContent$Builder;-><init>()V

    const-string v1, "toId"

    .line 56
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 57
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setToId(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    :cond_14
    const-string v1, "link"

    .line 60
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 61
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setLink(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    :cond_23
    const-string v1, "linkName"

    .line 64
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 65
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setLinkName(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    :cond_32
    const-string v1, "linkCaption"

    .line 68
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 69
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setLinkCaption(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    :cond_41
    const-string v1, "linkDescription"

    .line 72
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 73
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setLinkDescription(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    :cond_50
    const-string v1, "picture"

    .line 76
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 77
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setPicture(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    :cond_5f
    const-string v1, "mediaSource"

    .line 80
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 81
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/facebook/share/internal/ShareFeedContent$Builder;->setMediaSource(Ljava/lang/String;)Lcom/facebook/share/internal/ShareFeedContent$Builder;

    :cond_6e
    return-object v0
.end method

.method public static createShareContentBuilder(Landroid/os/Bundle;)Lcom/facebook/share/model/ShareLinkContent$Builder;
    .registers 4

    .line 32
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    const-string v1, "content_title"

    .line 34
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 35
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    :cond_14
    const-string v1, "content_description"

    .line 38
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 39
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    :cond_23
    const-string v1, "content_url"

    .line 42
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 43
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    :cond_36
    const-string v1, "photo_url"

    .line 46
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 47
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    :cond_49
    return-object v0
.end method

.method public static intToMode(I)Lcom/facebook/share/widget/ShareDialog$Mode;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_d
    sget-object p0, Lcom/facebook/share/widget/ShareDialog$Mode;->FEED:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object p0

    .line 94
    :cond_10
    sget-object p0, Lcom/facebook/share/widget/ShareDialog$Mode;->WEB:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object p0

    .line 92
    :cond_13
    sget-object p0, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object p0

    .line 90
    :cond_16
    sget-object p0, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    return-object p0
.end method
