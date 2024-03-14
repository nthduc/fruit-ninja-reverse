.class Lcom/chartboost/sdk/impl/v1$q;
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
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v1$q;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$q;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->b(Lcom/chartboost/sdk/impl/v1;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v1$q;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/u1;->f(Ljava/lang/String;)V

    .line 3
    const-class v1, Lcom/chartboost/sdk/impl/t1;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS->Native Track VAST event message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_37

    :catch_30
    const-string v0, "NativeBridgeCommand"

    const-string v1, "Exception occured while parsing the message for webview tracking VAST events"

    .line 5
    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_37
    return-void
.end method
