.class Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;
.super Ljava/lang/Object;
.source "ConversationDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpshift/common/conversation/ConversationDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttachmentInfo"
.end annotation


# instance fields
.field final contentType:Ljava/lang/String;

.field final fileName:Ljava/lang/String;

.field final filePath:Ljava/lang/String;

.field final isRejected:Z

.field final isSecure:Z

.field final isZipped:Z

.field final size:I

.field final synthetic this$0:Lcom/helpshift/common/conversation/ConversationDB;

.field final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/helpshift/common/conversation/ConversationDB;Lorg/json/JSONObject;)V
    .registers 5

    .line 2441
    iput-object p1, p0, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->this$0:Lcom/helpshift/common/conversation/ConversationDB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    const-string v0, "file_name"

    .line 2442
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->fileName:Ljava/lang/String;

    const-string v0, "content_type"

    .line 2443
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->contentType:Ljava/lang/String;

    const-string v0, "url"

    .line 2444
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->url:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "size"

    .line 2445
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->size:I

    const-string v1, "filePath"

    .line 2446
    invoke-virtual {p2, v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->filePath:Ljava/lang/String;

    const-string p1, "is_secure"

    .line 2447
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->isSecure:Z

    const-string p1, "is_user_attachment_zipped"

    .line 2448
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->isZipped:Z

    const-string p1, "is_user_attachment_rejected"

    .line 2449
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/helpshift/common/conversation/ConversationDB$AttachmentInfo;->isRejected:Z

    return-void
.end method
