.class Lcom/adcolony/sdk/m0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/m0;->h()V
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
    iput-object p1, p0, Lcom/adcolony/sdk/m0$b;->a:Lcom/adcolony/sdk/m0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->b()Lcom/adcolony/sdk/d;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/m0$b;->a:Lcom/adcolony/sdk/m0;

    invoke-static {v2}, Lcom/adcolony/sdk/m0;->a(Lcom/adcolony/sdk/m0;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 3
    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/adcolony/sdk/m0$b;->a:Lcom/adcolony/sdk/m0;

    invoke-static {v2}, Lcom/adcolony/sdk/m0;->a(Lcom/adcolony/sdk/m0;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyAdView;

    if-nez v1, :cond_2c

    const/4 v1, 0x0

    goto :goto_30

    .line 4
    :cond_2c
    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->e()Lcom/adcolony/sdk/c0;

    move-result-object v1

    :goto_30
    if-nez v1, :cond_38

    if-eqz v0, :cond_38

    .line 5
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyAdView;->getOmidManager()Lcom/adcolony/sdk/c0;

    move-result-object v1

    :cond_38
    if-nez v1, :cond_3c

    const/4 v0, -0x1

    goto :goto_40

    .line 6
    :cond_3c
    invoke-virtual {v1}, Lcom/adcolony/sdk/c0;->d()I

    move-result v0

    :goto_40
    if-eqz v1, :cond_64

    const/4 v2, 0x2

    if-ne v0, v2, :cond_64

    .line 8
    iget-object v0, p0, Lcom/adcolony/sdk/m0$b;->a:Lcom/adcolony/sdk/m0;

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/c0;->a(Landroid/webkit/WebView;)V

    .line 9
    iget-object v0, p0, Lcom/adcolony/sdk/m0$b;->a:Lcom/adcolony/sdk/m0;

    invoke-static {v0}, Lcom/adcolony/sdk/m0;->o(Lcom/adcolony/sdk/m0;)Lcom/adcolony/sdk/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/c0;->a(Lcom/adcolony/sdk/c;)V
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_64

    .line 12
    :catch_54
    new-instance v0, Lcom/adcolony/sdk/u$a;

    invoke-direct {v0}, Lcom/adcolony/sdk/u$a;-><init>()V

    const-string v1, "IllegalArgumentException when creating omid session"

    .line 13
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Ljava/lang/String;)Lcom/adcolony/sdk/u$a;

    move-result-object v0

    sget-object v1, Lcom/adcolony/sdk/u;->j:Lcom/adcolony/sdk/u;

    .line 14
    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u$a;->a(Lcom/adcolony/sdk/u;)V

    :cond_64
    :goto_64
    return-void
.end method
