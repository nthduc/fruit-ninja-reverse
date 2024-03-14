.class public Lcom/helpshift/support/conversations/messages/AvatarImageLoader;
.super Ljava/lang/Object;
.source "AvatarImageLoader.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAuthorAvatarActualImage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Lcom/helpshift/util/ValuePair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/helpshift/conversation/activeconversation/message/MessageDM;",
            ")",
            "Lcom/helpshift/util/ValuePair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getAuthorAvatarFallbackImage()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->author:Lcom/helpshift/conversation/activeconversation/message/Author;

    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/message/Author;->role:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    .line 57
    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->AGENT:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    if-ne v1, v2, :cond_17

    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->shouldShowPersonalisedAgentAvatar()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 59
    iget-object p0, p0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->author:Lcom/helpshift/conversation/activeconversation/message/Author;

    iget-object p0, p0, Lcom/helpshift/conversation/activeconversation/message/Author;->localAvatarImagePath:Ljava/lang/String;

    goto :goto_29

    .line 61
    :cond_17
    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->BOT:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    if-ne v1, v2, :cond_26

    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->shouldShowPersonalisedBotAvatar()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 63
    iget-object p0, p0, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->author:Lcom/helpshift/conversation/activeconversation/message/Author;

    iget-object p0, p0, Lcom/helpshift/conversation/activeconversation/message/Author;->localAvatarImagePath:Ljava/lang/String;

    goto :goto_29

    .line 65
    :cond_26
    sget-object p0, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->SYSTEM:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    move-object p0, v0

    .line 73
    :goto_29
    new-instance v1, Lcom/helpshift/util/ValuePair;

    invoke-direct {v1, p0, v0}, Lcom/helpshift/util/ValuePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static getLocalFallbackImage(Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)I
    .registers 2

    .line 77
    sget-object v0, Lcom/helpshift/support/conversations/messages/AvatarImageLoader$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$Author$AuthorRole:[I

    invoke-virtual {p0}, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    .line 85
    sget p0, Lcom/helpshift/R$drawable;->hs__default_support_avatar:I

    return p0

    .line 83
    :cond_14
    sget p0, Lcom/helpshift/R$drawable;->hs__default_agent_avatar:I

    return p0

    .line 81
    :cond_17
    sget p0, Lcom/helpshift/R$drawable;->hs__default_bot_avatar:I

    return p0

    .line 79
    :cond_1a
    sget p0, Lcom/helpshift/R$drawable;->hs__default_support_avatar:I

    return p0
.end method

.method static loadAvatarImageAccordingToState(Landroid/content/Context;Lcom/helpshift/conversation/activeconversation/message/MessageDM;Lcom/helpshift/views/CircleImageView;)V
    .registers 8

    .line 22
    invoke-virtual {p1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->getAvatarImageState()Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    move-result-object v0

    .line 23
    iget-object v1, p1, Lcom/helpshift/conversation/activeconversation/message/MessageDM;->author:Lcom/helpshift/conversation/activeconversation/message/Author;

    iget-object v1, v1, Lcom/helpshift/conversation/activeconversation/message/Author;->role:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    invoke-static {v1}, Lcom/helpshift/support/conversations/messages/AvatarImageLoader;->getLocalFallbackImage(Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;)I

    move-result v1

    .line 24
    invoke-static {p1}, Lcom/helpshift/support/conversations/messages/AvatarImageLoader;->getAuthorAvatarActualImage(Lcom/helpshift/conversation/activeconversation/message/MessageDM;)Lcom/helpshift/util/ValuePair;

    move-result-object p1

    .line 25
    iget-object v2, p1, Lcom/helpshift/util/ValuePair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 26
    iget-object p1, p1, Lcom/helpshift/util/ValuePair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 27
    invoke-virtual {p2}, Lcom/helpshift/views/CircleImageView;->getWidth()I

    move-result v3

    if-nez v3, :cond_28

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/helpshift/R$dimen;->hs__author_avatar_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 30
    :cond_28
    sget-object v4, Lcom/helpshift/support/conversations/messages/AvatarImageLoader$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageDM$AvatarImageDownloadState:[I

    invoke-virtual {v0}, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4d

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4d

    const/4 p1, 0x4

    if-eq v0, p1, :cond_3d

    goto :goto_66

    .line 46
    :cond_3d
    invoke-static {}, Lcom/helpshift/support/imageloader/ImageLoader;->getInstance()Lcom/helpshift/support/imageloader/ImageLoader;

    move-result-object p1

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 46
    invoke-virtual {p1, v2, p2, p0, v3}, Lcom/helpshift/support/imageloader/ImageLoader;->loadImageWithoutSampling(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_66

    .line 36
    :cond_4d
    invoke-static {p1}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 37
    invoke-static {}, Lcom/helpshift/support/imageloader/ImageLoader;->getInstance()Lcom/helpshift/support/imageloader/ImageLoader;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 39
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 37
    invoke-virtual {v0, p1, p2, p0, v3}, Lcom/helpshift/support/imageloader/ImageLoader;->loadImageWithoutSampling(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_66

    .line 42
    :cond_63
    invoke-virtual {p2, v1}, Lcom/helpshift/views/CircleImageView;->setImageResource(I)V

    :goto_66
    return-void
.end method

.method public static loadConversationHeaderAvatarImage(Landroid/content/Context;Lcom/helpshift/views/CircleImageView;Ljava/lang/String;)V
    .registers 6

    .line 92
    invoke-static {p2}, Lcom/helpshift/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 93
    invoke-virtual {p1}, Lcom/helpshift/views/CircleImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_17

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/helpshift/R$dimen;->hs__author_avatar_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1b

    :cond_17
    invoke-virtual {p1}, Lcom/helpshift/views/CircleImageView;->getWidth()I

    move-result v0

    .line 95
    :goto_1b
    invoke-static {}, Lcom/helpshift/support/imageloader/ImageLoader;->getInstance()Lcom/helpshift/support/imageloader/ImageLoader;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/helpshift/R$drawable;->hs__default_support_avatar:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 95
    invoke-virtual {v1, p2, p1, p0, v0}, Lcom/helpshift/support/imageloader/ImageLoader;->loadImageWithoutSampling(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    goto :goto_32

    .line 100
    :cond_2d
    sget p0, Lcom/helpshift/R$drawable;->hs__default_support_avatar:I

    invoke-virtual {p1, p0}, Lcom/helpshift/views/CircleImageView;->setImageResource(I)V

    :goto_32
    return-void
.end method
