.class Lcom/facebook/appevents/ml/Model$1;
.super Ljava/util/HashSet;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/ml/Model;-><init>(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/ml/Model;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/ml/Model;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lcom/facebook/appevents/ml/Model$1;->this$0:Lcom/facebook/appevents/ml/Model;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 71
    sget-object p1, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_INTEGRITY_DETECT:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {p1}, Lcom/facebook/appevents/ml/ModelManager$Task;->toKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/appevents/ml/Model$1;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object p1, Lcom/facebook/appevents/ml/ModelManager$Task;->MTML_APP_EVENT_PREDICTION:Lcom/facebook/appevents/ml/ModelManager$Task;

    invoke-virtual {p1}, Lcom/facebook/appevents/ml/ModelManager$Task;->toKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/appevents/ml/Model$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
