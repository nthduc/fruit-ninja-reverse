.class Lcom/adcolony/sdk/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/y;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/adcolony/sdk/y;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/y;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/y$a;->b:Lcom/adcolony/sdk/y;

    iput-object p2, p0, Lcom/adcolony/sdk/y$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->r()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "os_name"

    const-string v3, "android"

    .line 4
    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/adcolony/sdk/h;->v()Lcom/adcolony/sdk/g0;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/g0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "filepath"

    .line 7
    invoke-static {v1, v3, v2}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "info"

    .line 9
    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    const/4 v0, 0x0

    const-string v2, "m_origin"

    .line 10
    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 11
    iget-object v2, p0, Lcom/adcolony/sdk/y$a;->b:Lcom/adcolony/sdk/y;

    invoke-static {v2}, Lcom/adcolony/sdk/y;->a(Lcom/adcolony/sdk/y;)I

    move-result v2

    const-string v3, "m_id"

    invoke-static {v1, v3, v2}, Lcom/adcolony/sdk/s;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    const-string v2, "m_type"

    const-string v3, "Controller.create"

    .line 12
    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    new-instance v2, Lcom/adcolony/sdk/x;

    invoke-direct {v2, v1}, Lcom/adcolony/sdk/x;-><init>(Lorg/json/JSONObject;)V

    .line 16
    :try_start_5b
    new-instance v1, Lcom/adcolony/sdk/m0;

    iget-object v3, p0, Lcom/adcolony/sdk/y$a;->a:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v0}, Lcom/adcolony/sdk/m0;-><init>(Landroid/content/Context;IZ)V
    :try_end_63
    .catch Ljava/lang/RuntimeException; {:try_start_5b .. :try_end_63} :catch_67

    .line 27
    invoke-virtual {v1, v4, v2}, Lcom/adcolony/sdk/m0;->a(ZLcom/adcolony/sdk/x;)V

    return-void

    :catch_67
    move-exception v0

    .line 28
    new-instance v1, Lcom/adcolony/sdk/u$a;

    invoke-direct {v1}, Lcom/adcolony/sdk/u$a;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": during WebView initialization."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    const-string v1, " Disabling AdColony."

    .line 30
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->i:Lcom/adcolony/sdk/u;

    .line 31
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    .line 32
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->disable()Z

    return-void
.end method
