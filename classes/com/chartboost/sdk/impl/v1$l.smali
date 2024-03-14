.class Lcom/chartboost/sdk/impl/v1$l;
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
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v1$l;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$l;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v1$l;->a:Lcom/chartboost/sdk/impl/v1;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/v1$l;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/v1;->b(Lcom/chartboost/sdk/impl/v1;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "JS->Native Debug message: "

    invoke-static {v1, v2, v3}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u1;->e(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_31

    :catch_18
    nop

    const-string v0, "Exception occured while parsing the message for webview debug track event"

    const-string v1, "NativeBridgeCommand"

    .line 3
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v1$l;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 5
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v1$l;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/u1;->e(Ljava/lang/String;)V

    :cond_31
    :goto_31
    return-void
.end method
