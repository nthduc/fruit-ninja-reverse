.class public Lcom/applovin/impl/sdk/ad/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/ad/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/j;

.field private final b:Lcom/applovin/impl/sdk/ad/d;

.field private final c:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/ad/d;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/j;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/applovin/impl/sdk/ad/f$a;->a:Lcom/applovin/impl/sdk/j;

    iput-object p1, p0, Lcom/applovin/impl/sdk/ad/f$a;->b:Lcom/applovin/impl/sdk/ad/d;

    iput-object p2, p0, Lcom/applovin/impl/sdk/ad/f$a;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/impl/sdk/ad/f$a;->d:Z

    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f$a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->X()Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/applovin/impl/sdk/ad/g;

    iget-boolean v2, p0, Lcom/applovin/impl/sdk/ad/f$a;->d:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/applovin/impl/sdk/ad/e;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;ZZ)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f$a;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f$a;->a:Lcom/applovin/impl/sdk/j;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/j;->X()Lcom/applovin/impl/sdk/ad/e;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ad/f$a;->b:Lcom/applovin/impl/sdk/ad/d;

    iget-boolean v2, p0, Lcom/applovin/impl/sdk/ad/f$a;->d:Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/sdk/ad/e;->a(Lcom/applovin/impl/sdk/ad/d;ZI)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ad/f$a;->c:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    return-void
.end method
