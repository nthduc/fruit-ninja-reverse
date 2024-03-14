.class Lcom/adcolony/sdk/h$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/AdColonyAppOptions;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/h;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/h$n;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/x;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/adcolony/sdk/h$n;->a:Lcom/adcolony/sdk/h;

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->m()Lcom/adcolony/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/w;->a()Lcom/adcolony/sdk/e0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/adcolony/sdk/h$n;->a:Lcom/adcolony/sdk/h;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/adcolony/sdk/h;->b(Lcom/adcolony/sdk/h;Z)Z

    .line 3
    iget-object v1, p0, Lcom/adcolony/sdk/h$n;->a:Lcom/adcolony/sdk/h;

    invoke-static {v1}, Lcom/adcolony/sdk/h;->m(Lcom/adcolony/sdk/h;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 4
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/adcolony/sdk/s;->b()Lorg/json/JSONObject;

    move-result-object v3

    .line 6
    invoke-static {}, Lcom/adcolony/sdk/k0;->e()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_version"

    invoke-static {v3, v5, v4}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v4, "app_bundle_info"

    .line 7
    invoke-static {v1, v4, v3}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 8
    new-instance v3, Lcom/adcolony/sdk/x;

    const-string v4, "AdColony.on_update"

    invoke-direct {v3, v4, v2, v1}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v3}, Lcom/adcolony/sdk/x;->d()V

    .line 9
    iget-object v1, p0, Lcom/adcolony/sdk/h$n;->a:Lcom/adcolony/sdk/h;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/adcolony/sdk/h;->d(Lcom/adcolony/sdk/h;Z)Z

    .line 11
    :cond_3e
    iget-object v1, p0, Lcom/adcolony/sdk/h$n;->a:Lcom/adcolony/sdk/h;

    invoke-static {v1}, Lcom/adcolony/sdk/h;->n(Lcom/adcolony/sdk/h;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 12
    new-instance v1, Lcom/adcolony/sdk/x;

    const-string v3, "AdColony.on_install"

    invoke-direct {v1, v3, v2}, Lcom/adcolony/sdk/x;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/x;->d()V

    :cond_50
    if-eqz v0, :cond_5f

    .line 15
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "app_session_id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/s;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/e0;->f(Ljava/lang/String;)V

    .line 18
    :cond_5f
    invoke-static {}, Lcom/adcolony/sdk/AdColonyEventTracker;->a()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 19
    invoke-static {}, Lcom/adcolony/sdk/AdColonyEventTracker;->b()V

    .line 21
    :cond_68
    invoke-virtual {p1}, Lcom/adcolony/sdk/x;->b()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x4

    const-string v1, "concurrent_requests"

    invoke-static {p1, v1, v0}, Lcom/adcolony/sdk/s;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    .line 23
    iget-object v0, p0, Lcom/adcolony/sdk/h$n;->a:Lcom/adcolony/sdk/h;

    invoke-static {v0}, Lcom/adcolony/sdk/h;->o(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/m;->a()I

    move-result v0

    if-eq p1, v0, :cond_88

    .line 24
    iget-object v0, p0, Lcom/adcolony/sdk/h$n;->a:Lcom/adcolony/sdk/h;

    invoke-static {v0}, Lcom/adcolony/sdk/h;->o(Lcom/adcolony/sdk/h;)Lcom/adcolony/sdk/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/m;->a(I)V

    .line 26
    :cond_88
    iget-object p1, p0, Lcom/adcolony/sdk/h$n;->a:Lcom/adcolony/sdk/h;

    invoke-static {p1}, Lcom/adcolony/sdk/h;->p(Lcom/adcolony/sdk/h;)V

    return-void
.end method
