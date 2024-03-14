.class Lcom/chartboost/sdk/impl/v1$b;
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
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v1$b;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$b;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v0

    const-string v1, "NativeBridgeCommand"

    if-eqz v0, :cond_4d

    .line 3
    :try_start_a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$b;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->b(Lcom/chartboost/sdk/impl/v1;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/chartboost/sdk/impl/x;->c()Lcom/chartboost/sdk/impl/x;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/x;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 5
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v1$b;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v2

    iput-object v0, v2, Lcom/chartboost/sdk/impl/u1;->p:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_29

    goto :goto_42

    :catch_29
    nop

    const-string v0, "Cannot find video file name"

    .line 7
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$b;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$b;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v0

    const-string v1, "Parsing exception unknown field for video pause"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u1;->g(Ljava/lang/String;)V

    .line 12
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$b;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u1;->b(I)V

    goto :goto_52

    :cond_4d
    const-string v0, "Video paused command error"

    .line 14
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_52
    return-void
.end method
