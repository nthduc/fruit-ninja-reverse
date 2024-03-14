.class Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$results:[Ljava/lang/String;

.field final synthetic val$writeIndex:I


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V
    .registers 5

    .line 846
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    iput-object p2, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$results:[Ljava/lang/String;

    iput p3, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    iput-object p4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 4

    .line 850
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_36

    const-string v1, "Error staging photo."

    if-eqz v0, :cond_15

    .line 852
    :try_start_8
    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    move-object v0, v1

    .line 856
    :cond_f
    new-instance v1, Lcom/facebook/FacebookGraphResponseException;

    invoke-direct {v1, p1, v0}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    throw v1

    .line 858
    :cond_15
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_30

    const-string v0, "uri"

    .line 862
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 866
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$results:[Ljava/lang/String;

    iget v1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    aput-object p1, v0, v1

    goto :goto_41

    .line 864
    :cond_2a
    new-instance p1, Lcom/facebook/FacebookException;

    invoke-direct {p1, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 860
    :cond_30
    new-instance p1, Lcom/facebook/FacebookException;

    invoke-direct {p1, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_36} :catch_36

    :catch_36
    move-exception p1

    .line 868
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->this$1:Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;

    # getter for: Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;
    invoke-static {v0}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->access$800(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;)[Ljava/lang/Exception;

    move-result-object v0

    iget v1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$writeIndex:I

    aput-object p1, v0, v1

    .line 870
    :goto_41
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
