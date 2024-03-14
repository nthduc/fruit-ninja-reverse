.class Lcom/chartboost/sdk/impl/v1$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/v1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/v1;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/v1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v1$k;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "NativeBridgeCommand"

    .line 1
    :try_start_2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v1$k;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/v1;->b(Lcom/chartboost/sdk/impl/v1;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-float v1, v1

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "######### JS->Native Video current player duration"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v1$k;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/impl/u1;->a(F)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_30} :catch_31

    goto :goto_4a

    :catch_31
    nop

    .line 5
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v1$k;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v1$k;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v1

    const-string v2, "Parsing exception unknown field for current player duration"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/u1;->g(Ljava/lang/String;)V

    :cond_45
    const-string v1, "Cannot find duration parameter for the video"

    .line 8
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4a
    return-void
.end method
