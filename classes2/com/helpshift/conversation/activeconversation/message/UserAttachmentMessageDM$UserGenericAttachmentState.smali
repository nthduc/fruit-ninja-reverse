.class public final enum Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;
.super Ljava/lang/Enum;
.source "UserAttachmentMessageDM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserGenericAttachmentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

.field public static final enum DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

.field public static final enum DOWNLOAD_NOT_STARTED:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

.field public static final enum SENDING:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

.field public static final enum SENT:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

.field public static final enum UNSENT_NOT_RETRYABLE:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

.field public static final enum UNSENT_RETRYABLE:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 259
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    const/4 v1, 0x0

    const-string v2, "DOWNLOAD_NOT_STARTED"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->DOWNLOAD_NOT_STARTED:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    .line 260
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    const/4 v2, 0x1

    const-string v3, "DOWNLOADING"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    .line 261
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    const/4 v3, 0x2

    const-string v4, "UNSENT_RETRYABLE"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->UNSENT_RETRYABLE:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    .line 262
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    const/4 v4, 0x3

    const-string v5, "UNSENT_NOT_RETRYABLE"

    invoke-direct {v0, v5, v4}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->UNSENT_NOT_RETRYABLE:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    .line 263
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    const/4 v5, 0x4

    const-string v6, "SENDING"

    invoke-direct {v0, v6, v5}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->SENDING:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    .line 264
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    const/4 v6, 0x5

    const-string v7, "SENT"

    invoke-direct {v0, v7, v6}, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    const/4 v0, 0x6

    .line 258
    new-array v0, v0, [Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    sget-object v7, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->DOWNLOAD_NOT_STARTED:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    aput-object v7, v0, v1

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->UNSENT_RETRYABLE:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->UNSENT_NOT_RETRYABLE:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->SENDING:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->SENT:Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->$VALUES:[Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 258
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;
    .registers 2

    .line 258
    const-class v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;
    .registers 1

    .line 258
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->$VALUES:[Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    invoke-virtual {v0}, [Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/conversation/activeconversation/message/UserAttachmentMessageDM$UserGenericAttachmentState;

    return-object v0
.end method
