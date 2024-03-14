.class final Lcom/adcolony/sdk/AdColony$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adcolony/sdk/AdColonyAdOptions;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdOptions;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/AdColony$k;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iput-object p2, p0, Lcom/adcolony/sdk/AdColony$k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/adcolony/sdk/AdColony$k;->c:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->A()Z

    move-result v1

    if-nez v1, :cond_5f

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->B()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_5f

    .line 9
    :cond_11
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->b()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 11
    iget-object v0, p0, Lcom/adcolony/sdk/AdColony$k;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$k;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;)Z

    return-void

    .line 15
    :cond_25
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->y()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/AdColony$k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/AdColonyZone;

    if-nez v1, :cond_3a

    .line 17
    new-instance v1, Lcom/adcolony/sdk/AdColonyZone;

    iget-object v2, p0, Lcom/adcolony/sdk/AdColony$k;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 21
    :cond_3a
    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyZone;->getZoneType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_56

    .line 22
    invoke-virtual {v1}, Lcom/adcolony/sdk/AdColonyZone;->getZoneType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_56

    .line 23
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->b()Lcom/adcolony/sdk/d;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$k;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/adcolony/sdk/AdColony$k;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iget-object v3, p0, Lcom/adcolony/sdk/AdColony$k;->c:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)V

    goto :goto_5e

    .line 26
    :cond_56
    new-instance v0, Lcom/adcolony/sdk/AdColony$k$a;

    invoke-direct {v0, p0, v1}, Lcom/adcolony/sdk/AdColony$k$a;-><init>(Lcom/adcolony/sdk/AdColony$k;Lcom/adcolony/sdk/AdColonyZone;)V

    invoke-static {v0}, Lcom/adcolony/sdk/k0;->a(Ljava/lang/Runnable;)Z

    :goto_5e
    return-void

    .line 27
    :cond_5f
    :goto_5f
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->a()V

    .line 28
    iget-object v0, p0, Lcom/adcolony/sdk/AdColony$k;->a:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$k;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;)Z

    return-void
.end method
