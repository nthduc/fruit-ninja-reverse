.class Lcom/facebook/share/ShareApi$2;
.super Ljava/lang/Object;
.source "ShareApi.java"

# interfaces
.implements Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/ShareApi;->shareOpenGraphContent(Lcom/facebook/share/model/ShareOpenGraphContent;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/ShareApi;

.field final synthetic val$action:Lcom/facebook/share/model/ShareOpenGraphAction;

.field final synthetic val$callback:Lcom/facebook/FacebookCallback;

.field final synthetic val$parameters:Landroid/os/Bundle;

.field final synthetic val$requestCallback:Lcom/facebook/GraphRequest$Callback;


# direct methods
.method constructor <init>(Lcom/facebook/share/ShareApi;Landroid/os/Bundle;Lcom/facebook/share/model/ShareOpenGraphAction;Lcom/facebook/GraphRequest$Callback;Lcom/facebook/FacebookCallback;)V
    .registers 6

    .line 252
    iput-object p1, p0, Lcom/facebook/share/ShareApi$2;->this$0:Lcom/facebook/share/ShareApi;

    iput-object p2, p0, Lcom/facebook/share/ShareApi$2;->val$parameters:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/facebook/share/ShareApi$2;->val$action:Lcom/facebook/share/model/ShareOpenGraphAction;

    iput-object p4, p0, Lcom/facebook/share/ShareApi$2;->val$requestCallback:Lcom/facebook/GraphRequest$Callback;

    iput-object p5, p0, Lcom/facebook/share/ShareApi$2;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 8

    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/facebook/share/ShareApi$2;->val$parameters:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/facebook/share/ShareApi;->access$000(Landroid/os/Bundle;)V

    .line 258
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 259
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/share/ShareApi$2;->this$0:Lcom/facebook/share/ShareApi;

    iget-object v3, p0, Lcom/facebook/share/ShareApi$2;->val$action:Lcom/facebook/share/model/ShareOpenGraphAction;

    .line 260
    invoke-virtual {v3}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/facebook/share/ShareApi;->access$100(Lcom/facebook/share/ShareApi;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/share/ShareApi$2;->val$parameters:Landroid/os/Bundle;

    sget-object v5, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v6, p0, Lcom/facebook/share/ShareApi$2;->val$requestCallback:Lcom/facebook/GraphRequest$Callback;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 264
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;
    :try_end_2a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_31

    :catch_2b
    move-exception v0

    .line 266
    iget-object v1, p0, Lcom/facebook/share/ShareApi$2;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v1, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    :goto_31
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/facebook/share/ShareApi$2;->val$callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeCallbackWithException(Lcom/facebook/FacebookCallback;Ljava/lang/Exception;)V

    return-void
.end method
