.class final Lcom/facebook/unity/FB$2;
.super Ljava/lang/Object;
.source "FB.java"

# interfaces
.implements Lcom/facebook/LoginStatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/unity/FB;->RetrieveLoginStatus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbackID:Ljava/lang/String;

.field final synthetic val$unityMessage:Lcom/facebook/unity/UnityMessage;


# direct methods
.method constructor <init>(Lcom/facebook/unity/UnityMessage;Ljava/lang/String;)V
    .registers 3

    .line 165
    iput-object p1, p0, Lcom/facebook/unity/FB$2;->val$unityMessage:Lcom/facebook/unity/UnityMessage;

    iput-object p2, p0, Lcom/facebook/unity/FB$2;->val$callbackID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/AccessToken;)V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/facebook/unity/FB$2;->val$unityMessage:Lcom/facebook/unity/UnityMessage;

    iget-object v1, p0, Lcom/facebook/unity/FB$2;->val$callbackID:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/facebook/unity/FBLogin;->addLoginParametersToMessage(Lcom/facebook/unity/UnityMessage;Lcom/facebook/AccessToken;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/facebook/unity/FB$2;->val$unityMessage:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Lcom/facebook/unity/UnityMessage;->send()V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/facebook/unity/FB$2;->val$unityMessage:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/facebook/unity/UnityMessage;->sendError(Ljava/lang/String;)V

    return-void
.end method

.method public onFailure()V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/facebook/unity/FB$2;->val$unityMessage:Lcom/facebook/unity/UnityMessage;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "failed"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/unity/UnityMessage;->put(Ljava/lang/String;Ljava/io/Serializable;)Lcom/facebook/unity/UnityMessage;

    .line 175
    iget-object v0, p0, Lcom/facebook/unity/FB$2;->val$unityMessage:Lcom/facebook/unity/UnityMessage;

    invoke-virtual {v0}, Lcom/facebook/unity/UnityMessage;->send()V

    return-void
.end method
