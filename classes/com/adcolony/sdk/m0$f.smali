.class Lcom/adcolony/sdk/m0$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/m0;->a(ZLcom/adcolony/sdk/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/m0;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/m0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/m0$f;->a:Lcom/adcolony/sdk/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch_messages(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/m0$f;->a:Lcom/adcolony/sdk/m0;

    invoke-static {v0}, Lcom/adcolony/sdk/m0;->q(Lcom/adcolony/sdk/m0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 2
    iget-object p2, p0, Lcom/adcolony/sdk/m0$f;->a:Lcom/adcolony/sdk/m0;

    invoke-static {p2, p1}, Lcom/adcolony/sdk/m0;->b(Lcom/adcolony/sdk/m0;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public enable_reverse_messaging(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/m0$f;->a:Lcom/adcolony/sdk/m0;

    invoke-static {v0}, Lcom/adcolony/sdk/m0;->q(Lcom/adcolony/sdk/m0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 2
    iget-object p1, p0, Lcom/adcolony/sdk/m0$f;->a:Lcom/adcolony/sdk/m0;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/adcolony/sdk/m0;->a(Lcom/adcolony/sdk/m0;Z)Z

    :cond_12
    return-void
.end method

.method public pull_messages(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/m0$f;->a:Lcom/adcolony/sdk/m0;

    invoke-static {v0}, Lcom/adcolony/sdk/m0;->q(Lcom/adcolony/sdk/m0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    const-string p1, "[]"

    .line 3
    iget-object v0, p0, Lcom/adcolony/sdk/m0$f;->a:Lcom/adcolony/sdk/m0;

    invoke-static {v0}, Lcom/adcolony/sdk/m0;->r(Lcom/adcolony/sdk/m0;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_15
    iget-object v1, p0, Lcom/adcolony/sdk/m0$f;->a:Lcom/adcolony/sdk/m0;

    invoke-static {v1}, Lcom/adcolony/sdk/m0;->b(Lcom/adcolony/sdk/m0;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3c

    .line 5
    iget-object v1, p0, Lcom/adcolony/sdk/m0$f;->a:Lcom/adcolony/sdk/m0;

    invoke-static {v1}, Lcom/adcolony/sdk/m0;->c(Lcom/adcolony/sdk/m0;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 6
    iget-object p1, p0, Lcom/adcolony/sdk/m0$f;->a:Lcom/adcolony/sdk/m0;

    invoke-static {p1}, Lcom/adcolony/sdk/m0;->b(Lcom/adcolony/sdk/m0;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    :cond_33
    iget-object v1, p0, Lcom/adcolony/sdk/m0$f;->a:Lcom/adcolony/sdk/m0;

    invoke-static {}, Lcom/adcolony/sdk/s;->a()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adcolony/sdk/m0;->a(Lcom/adcolony/sdk/m0;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 10
    :cond_3c
    monitor-exit v0

    return-object p1

    :catchall_3e
    move-exception p1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_15 .. :try_end_40} :catchall_3e

    throw p1

    :cond_41
    const-string p1, "[]"

    return-object p1
.end method

.method public push_messages(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/m0$f;->a:Lcom/adcolony/sdk/m0;

    invoke-static {v0}, Lcom/adcolony/sdk/m0;->q(Lcom/adcolony/sdk/m0;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 2
    iget-object p2, p0, Lcom/adcolony/sdk/m0$f;->a:Lcom/adcolony/sdk/m0;

    invoke-static {p2, p1}, Lcom/adcolony/sdk/m0;->b(Lcom/adcolony/sdk/m0;Ljava/lang/String;)V

    :cond_11
    return-void
.end method
