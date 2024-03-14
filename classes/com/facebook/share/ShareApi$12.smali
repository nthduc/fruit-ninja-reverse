.class Lcom/facebook/share/ShareApi$12;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->stagePhoto(Lcom/facebook/share/model/SharePhoto;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

.field final synthetic val$photo:Lcom/facebook/share/model/SharePhoto;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;Lcom/facebook/share/model/SharePhoto;)V
    .registers 4

    .line 679
    iput-object p1, p0, Lcom/facebook/share/ShareApi$12;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$12;->val$photo:Lcom/facebook/share/model/SharePhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 5

    .line 682
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    const-string v1, "Error staging photo."

    if-eqz v0, :cond_1a

    .line 684
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    move-object v0, v1

    .line 688
    :cond_f
    iget-object v1, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v2, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v2, p1, v0}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    return-void

    .line 692
    :cond_1a
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_2b

    .line 694
    iget-object p1, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    return-void

    :cond_2b
    const-string v0, "uri"

    .line 697
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3e

    .line 699
    iget-object p1, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v0, Lcom/facebook/FacebookException;

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    return-void

    .line 703
    :cond_3e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_43
    const-string v2, "url"

    .line 705
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "user_generated"

    .line 706
    iget-object v2, p0, Lcom/facebook/share/ShareApi$12;->val$photo:Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {v2}, Lcom/facebook/share/model/SharePhoto;->getUserGenerated()Z

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_53} :catch_59

    .line 715
    iget-object p1, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    invoke-interface {p1, v0}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onComplete(Ljava/lang/Object;)V

    return-void

    :catch_59
    move-exception p1

    .line 708
    invoke-virtual {p1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_61

    move-object p1, v1

    .line 712
    :cond_61
    iget-object v0, p0, Lcom/facebook/share/ShareApi$12;->val$onPhotoStagedListener:Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;

    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;->onError(Lcom/facebook/FacebookException;)V

    return-void
.end method
