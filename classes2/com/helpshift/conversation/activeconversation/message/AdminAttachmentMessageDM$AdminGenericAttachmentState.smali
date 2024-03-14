.class public final enum Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;
.super Ljava/lang/Enum;
.source "AdminAttachmentMessageDM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdminGenericAttachmentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

.field public static final enum DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

.field public static final enum DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

.field public static final enum DOWNLOAD_NOT_STARTED:Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 150
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    const/4 v1, 0x0

    const-string v2, "DOWNLOAD_NOT_STARTED"

    invoke-direct {v0, v2, v1}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;->DOWNLOAD_NOT_STARTED:Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    .line 151
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    const/4 v2, 0x1

    const-string v3, "DOWNLOADING"

    invoke-direct {v0, v3, v2}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;->DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    .line 152
    new-instance v0, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    const/4 v3, 0x2

    const-string v4, "DOWNLOADED"

    invoke-direct {v0, v4, v3}, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;->DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    const/4 v0, 0x3

    .line 149
    new-array v0, v0, [Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    sget-object v4, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;->DOWNLOAD_NOT_STARTED:Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;->DOWNLOADING:Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;->DOWNLOADED:Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;->$VALUES:[Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;
    .registers 2

    .line 149
    const-class v0, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    return-object p0
.end method

.method public static values()[Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;
    .registers 1

    .line 149
    sget-object v0, Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;->$VALUES:[Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    invoke-virtual {v0}, [Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/helpshift/conversation/activeconversation/message/AdminAttachmentMessageDM$AdminGenericAttachmentState;

    return-object v0
.end method
