.class final Lcom/facebook/appevents/ml/Model$2;
.super Ljava/util/HashMap;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/ml/Model;->getMapping()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 215
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "embedding.weight"

    const-string v1, "embed.weight"

    .line 217
    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/ml/Model$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dense1.weight"

    const-string v1, "fc1.weight"

    .line 218
    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/ml/Model$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dense2.weight"

    const-string v1, "fc2.weight"

    .line 219
    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/ml/Model$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dense3.weight"

    const-string v1, "fc3.weight"

    .line 220
    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/ml/Model$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dense1.bias"

    const-string v1, "fc1.bias"

    .line 221
    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/ml/Model$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dense2.bias"

    const-string v1, "fc2.bias"

    .line 222
    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/ml/Model$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dense3.bias"

    const-string v1, "fc3.bias"

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/ml/Model$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method