.class final Lcom/adcolony/sdk/AdColony$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/AdColony;->requestAdView(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdViewListener;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/AdColonyAdViewListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/adcolony/sdk/AdColonyAdSize;

.field final synthetic d:Lcom/adcolony/sdk/AdColonyAdOptions;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/AdColonyAdViewListener;Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/adcolony/sdk/AdColony$f;->a:Lcom/adcolony/sdk/AdColonyAdViewListener;

    iput-object p2, p0, Lcom/adcolony/sdk/AdColony$f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/adcolony/sdk/AdColony$f;->c:Lcom/adcolony/sdk/AdColonyAdSize;

    iput-object p4, p0, Lcom/adcolony/sdk/AdColony$f;->d:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Lcom/adcolony/sdk/h;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->A()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->B()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3
    :cond_10
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->a()V

    .line 4
    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$f;->a:Lcom/adcolony/sdk/AdColonyAdViewListener;

    iget-object v2, p0, Lcom/adcolony/sdk/AdColony$f;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyAdViewListener;Ljava/lang/String;)Z

    .line 8
    :cond_1a
    invoke-static {}, Lcom/adcolony/sdk/AdColony;->b()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 10
    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$f;->a:Lcom/adcolony/sdk/AdColonyAdViewListener;

    iget-object v2, p0, Lcom/adcolony/sdk/AdColony$f;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/adcolony/sdk/AdColony;->a(Lcom/adcolony/sdk/AdColonyAdViewListener;Ljava/lang/String;)Z

    .line 12
    :cond_2d
    invoke-virtual {v0}, Lcom/adcolony/sdk/h;->b()Lcom/adcolony/sdk/d;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/AdColony$f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/adcolony/sdk/AdColony$f;->a:Lcom/adcolony/sdk/AdColonyAdViewListener;

    iget-object v3, p0, Lcom/adcolony/sdk/AdColony$f;->c:Lcom/adcolony/sdk/AdColonyAdSize;

    iget-object v4, p0, Lcom/adcolony/sdk/AdColony$f;->d:Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyAdViewListener;Lcom/adcolony/sdk/AdColonyAdSize;Lcom/adcolony/sdk/AdColonyAdOptions;)V

    return-void
.end method
