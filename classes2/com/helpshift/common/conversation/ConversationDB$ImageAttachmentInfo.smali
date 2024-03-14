.class Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;
.super Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;
.source "ConversationDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/common/conversation/ConversationDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageAttachmentInfo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/helpshift/common/conversation/ConversationDB;

.field final thumbnailFilePath:Ljava/lang/String;

.field final thumbnailUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpshift/common/conversation/ConversationDB;Lorg/json/JSONObject;)V
    .registers 4

    .line 2424
    iput-object p1, p0, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->this$0:Lcom/helpshift/common/conversation/ConversationDB;

    .line 2425
    invoke-direct {p0, p1, p2}, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;-><init>(Lcom/helpshift/common/conversation/ConversationDB;Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    const-string v0, "thumbnail_url"

    .line 2426
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->thumbnailUrl:Ljava/lang/String;

    const-string v0, "thumbnailFilePath"

    .line 2427
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/common/conversation/ConversationDB$ImageAttachmentInfo;->thumbnailFilePath:Ljava/lang/String;

    return-void
.end method
