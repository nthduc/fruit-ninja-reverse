.class public final enum Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;
.super Ljava/lang/Enum;
.source "AdminActionCardMessageDM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionCardImageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

.field public static final enum DOWNLOAD_NOT_STARTED:Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

.field public static final enum IMAGE_DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

.field public static final enum IMAGE_DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

.field public static final enum IMAGE_NOT_PRESENT:Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 158
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    const/4 v1, 0x0

    const-string v2, "DOWNLOAD_NOT_STARTED"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;->DOWNLOAD_NOT_STARTED:Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    .line 159
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    const/4 v2, 0x1

    const-string v3, "IMAGE_DOWNLOADING"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;->IMAGE_DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    .line 160
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    const/4 v3, 0x2

    const-string v4, "IMAGE_DOWNLOADED"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;->IMAGE_DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    .line 161
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    const/4 v4, 0x3

    const-string v5, "IMAGE_NOT_PRESENT"

    invoke-direct {v0, v5, v4}, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;->IMAGE_NOT_PRESENT:Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    const/4 v0, 0x4

    .line 157
    new-array v0, v0, [Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    sget-object v5, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;->DOWNLOAD_NOT_STARTED:Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;->IMAGE_DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;->IMAGE_DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;->IMAGE_NOT_PRESENT:Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;->$VALUES:[Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 157
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;
    .registers 2

    .line 157
    const-class v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;
    .registers 1

    .line 157
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;->$VALUES:[Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    invoke-virtual {v0}, [Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/conversation/activeconversation/message/AdminActionCardMessageDM$ActionCardImageState;

    return-object v0
.end method
