.class Lcom/applovin/impl/sdk/a/a$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/a/a$a;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAd;

.field final synthetic b:Lcom/applovin/impl/sdk/a/a$a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/a/a$a;Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/a$a$1;->b:Lcom/applovin/impl/sdk/a/a$a;

    iput-object p2, p0, Lcom/applovin/impl/sdk/a/a$a$1;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$a$1;->b:Lcom/applovin/impl/sdk/a/a$a;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/a$a;->a(Lcom/applovin/impl/sdk/a/a$a;)Lcom/applovin/sdk/AppLovinAdLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/a/a$a$1;->a:Lcom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    const-string v1, "AppLovinIncentivizedInterstitial"

    const-string v2, "Unable to notify ad listener about a newly loaded ad"

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_14
    return-void
.end method
