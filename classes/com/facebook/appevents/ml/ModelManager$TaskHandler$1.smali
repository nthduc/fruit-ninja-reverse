.class final Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1;
.super Ljava/lang/Object;
.source "ModelManager.java"

# interfaces
.implements Lcom/facebook/appevents/internal/FileDownloadTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->execute(Lcom/facebook/appevents/ml/ModelManager$TaskHandler;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$slaves:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    .line 422
    iput-object p1, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1;->val$slaves:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/io/File;)V
    .registers 7

    .line 425
    invoke-static {p1}, Lcom/facebook/appevents/ml/Model;->build(Ljava/io/File;)Lcom/facebook/appevents/ml/Model;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 427
    iget-object v0, p0, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1;->val$slaves:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->useCase:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->versionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_rule"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    iget-object v3, v1, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->ruleUri:Ljava/lang/String;

    new-instance v4, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1$1;-><init>(Lcom/facebook/appevents/ml/ModelManager$TaskHandler$1;Lcom/facebook/appevents/ml/ModelManager$TaskHandler;Lcom/facebook/appevents/ml/Model;)V

    # invokes: Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->download(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/internal/FileDownloadTask$Callback;)V
    invoke-static {v3, v2, v4}, Lcom/facebook/appevents/ml/ModelManager$TaskHandler;->access$600(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/appevents/internal/FileDownloadTask$Callback;)V

    goto :goto_c

    :cond_40
    return-void
.end method
