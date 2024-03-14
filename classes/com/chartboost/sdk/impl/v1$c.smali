.class Lcom/chartboost/sdk/impl/v1$c;
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
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v1$c;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$c;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v0

    const-string v1, "NativeBridgeCommand"

    if-eqz v0, :cond_44

    .line 3
    :try_start_a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$c;->a:Lcom/chartboost/sdk/impl/v1;

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

    if-nez v2, :cond_39

    .line 5
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v1$c;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v2

    iput-object v0, v2, Lcom/chartboost/sdk/impl/u1;->p:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_29

    goto :goto_39

    :catch_29
    const-string v0, "Cannot find video file name"

    .line 7
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$c;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v0

    const-string v1, "Parsing exception unknown field for video play"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u1;->g(Ljava/lang/String;)V

    .line 10
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$c;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u1;->b(I)V

    goto :goto_49

    :cond_44
    const-string v0, "Video playing command error"

    .line 12
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_49
    return-void
.end method
