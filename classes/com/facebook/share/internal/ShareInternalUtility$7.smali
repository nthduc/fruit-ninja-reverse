.class final Lcom/facebook/share/internal/ShareInternalUtility$7;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"

# interfaces
.implements Lcom/facebook/share/internal/OpenGraphJSONUtility$PhotoJSONProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/ShareInternalUtility;->toJSONObjectForCall(Ljava/util/UUID;Lcom/facebook/share/model/ShareOpenGraphContent;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$attachments:Ljava/util/ArrayList;

.field final synthetic val$callId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Ljava/util/UUID;Ljava/util/ArrayList;)V
    .registers 3

    .line 356
    iput-object p1, p0, Lcom/facebook/share/internal/ShareInternalUtility$7;->val$callId:Ljava/util/UUID;

    iput-object p2, p0, Lcom/facebook/share/internal/ShareInternalUtility$7;->val$attachments:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJSONObject(Lcom/facebook/share/model/SharePhoto;)Lorg/json/JSONObject;
    .registers 5

    .line 359
    iget-object v0, p0, Lcom/facebook/share/internal/ShareInternalUtility$7;->val$callId:Ljava/util/UUID;

    # invokes: Lcom/facebook/share/internal/ShareInternalUtility;->getAttachment(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    invoke-static {v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->access$000(Ljava/util/UUID;Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return-object p1

    .line 365
    :cond_a
    iget-object v1, p0, Lcom/facebook/share/internal/ShareInternalUtility$7;->val$attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_14
    const-string v2, "url"

    .line 369
    invoke-virtual {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->getAttachmentUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhoto;->getUserGenerated()Z

    move-result p1

    if-eqz p1, :cond_29

    const-string p1, "user_generated"

    const/4 v0, 0x1

    .line 371
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_29} :catch_2a

    :cond_29
    return-object v1

    :catch_2a
    move-exception p1

    .line 374
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unable to attach images"

    invoke-direct {v0, v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
