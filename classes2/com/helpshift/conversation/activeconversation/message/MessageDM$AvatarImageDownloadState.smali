.class public final enum Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;
.super Ljava/lang/Enum;
.source "MessageDM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/conversation/activeconversation/message/MessageDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AvatarImageDownloadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

.field public static final enum AVATAR_IMAGE_DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

.field public static final enum AVATAR_IMAGE_DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

.field public static final enum AVATAR_IMAGE_DOWNLOAD_FAILED:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

.field public static final enum AVATAR_IMAGE_NOT_PRESENT:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 304
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    const/4 v1, 0x0

    const-string v2, "AVATAR_IMAGE_DOWNLOAD_FAILED"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_DOWNLOAD_FAILED:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    .line 305
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    const/4 v2, 0x1

    const-string v3, "AVATAR_IMAGE_NOT_PRESENT"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_NOT_PRESENT:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    .line 306
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    const/4 v3, 0x2

    const-string v4, "AVATAR_IMAGE_DOWNLOADING"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    .line 307
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    const/4 v4, 0x3

    const-string v5, "AVATAR_IMAGE_DOWNLOADED"

    invoke-direct {v0, v5, v4}, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    const/4 v0, 0x4

    .line 303
    new-array v0, v0, [Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    sget-object v5, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_DOWNLOAD_FAILED:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_NOT_PRESENT:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->AVATAR_IMAGE_DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->$VALUES:[Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 303
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;
    .registers 2

    .line 303
    const-class v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;
    .registers 1

    .line 303
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->$VALUES:[Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    invoke-virtual {v0}, [Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/conversation/activeconversation/message/MessageDM$AvatarImageDownloadState;

    return-object v0
.end method
