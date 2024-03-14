.class synthetic Lcom/helpshift/support/conversations/messages/AvatarImageLoader$1;
.super Ljava/lang/Object;
.source "AvatarImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/support/conversations/messages/AvatarImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$helpshift$conversation$activeconversation$message$Author$AuthorRole:[I

.field static final synthetic $SwitchMap$com$helpshift$conversation$activeconversation$message$MessageDM$AvatarImageDownloadState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 77
    invoke-static {}, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->values()[Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/helpshift/support/conversations/messages/AvatarImageLoader$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$Author$AuthorRole:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/helpshift/support/conversations/messages/AvatarImageLoader$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$Author$AuthorRole:[I

    sget-object v2, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->SYSTEM:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    invoke-virtual {v2}, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_14} :catch_14

    :catch_14
    const/4 v1, 0x2

    :try_start_15
    sget-object v2, Lcom/helpshift/support/conversations/messages/AvatarImageLoader$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$Author$AuthorRole:[I

    sget-object v3, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->BOT:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    invoke-virtual {v3}, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_1f

    :catch_1f
    const/4 v2, 0x3

    :try_start_20
    sget-object v3, Lcom/helpshift/support/conversations/messages/AvatarImageLoader$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$Author$AuthorRole:[I

    sget-object v4, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->AGENT:Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;

    invoke-virtual {v4}, Lcom/helpshift/conversation/activeconversation/message/Author$AuthorRole;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2a

    .line 30
    :catch_2a
    invoke-static {}, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->values()[Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/helpshift/support/conversations/messages/AvatarImageLoader$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageDM$AvatarImageDownloadState:[I

    :try_start_33
    sget-object v3, Lcom/helpshift/support/conversations/messages/AvatarImageLoader$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageDM$AvatarImageDownloadState:[I

    sget-object v4, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_DOWNLOAD_FAILED:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    invoke-virtual {v4}, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_3d

    :catch_3d
    :try_start_3d
    sget-object v0, Lcom/helpshift/support/conversations/messages/AvatarImageLoader$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageDM$AvatarImageDownloadState:[I

    sget-object v3, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_NOT_PRESENT:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    invoke-virtual {v3}, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_47

    :catch_47
    :try_start_47
    sget-object v0, Lcom/helpshift/support/conversations/messages/AvatarImageLoader$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageDM$AvatarImageDownloadState:[I

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_51} :catch_51

    :catch_51
    :try_start_51
    sget-object v0, Lcom/helpshift/support/conversations/messages/AvatarImageLoader$1;->$SwitchMap$com$helpshift$conversation$activeconversation$message$MessageDM$AvatarImageDownloadState:[I

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    invoke-virtual {v1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_5c} :catch_5c

    :catch_5c
    return-void
.end method
