.class Lcom/chartboost/sdk/impl/v1$n;
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
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v1$n;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "http://"

    const-string v1, "NativeBridgeCommand"

    .line 1
    :try_start_4
    iget-object v2, p0, Lcom/chartboost/sdk/impl/v1$n;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/v1;->b(Lcom/chartboost/sdk/impl/v1;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    :cond_2d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$n;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/chartboost/sdk/f;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_37} :catch_44
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_37} :catch_38

    goto :goto_4f

    :catch_38
    move-exception v0

    .line 10
    const-class v2, Lcom/chartboost/sdk/impl/v1$n;

    const-string v3, "Exception while opening a browser view with MRAID url"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 11
    invoke-static {v1, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :catch_44
    move-exception v0

    .line 12
    const-class v2, Lcom/chartboost/sdk/impl/v1$n;

    const-string v3, "ActivityNotFoundException occured when opening a url in a browser"

    invoke-static {v2, v3, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 13
    invoke-static {v1, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    return-void
.end method
