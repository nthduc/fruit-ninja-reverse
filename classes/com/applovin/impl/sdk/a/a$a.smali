.class Lcom/applovin/impl/sdk/a/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/sdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/a/a;

.field private final b:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/a/a;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/a$a;->a:Lcom/applovin/impl/sdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/a/a$a;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/a/a$a;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .registers 1

    iget-object p0, p0, Lcom/applovin/impl/sdk/a/a$a;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object p0
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$a;->a:Lcom/applovin/impl/sdk/a/a;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/a/a;->b(Lcom/applovin/impl/sdk/a/a;Lcom/applovin/sdk/AppLovinAd;)Lcom/applovin/sdk/AppLovinAd;

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$a;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_11

    new-instance v0, Lcom/applovin/impl/sdk/a/a$a$1;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/a/a$a$1;-><init>(Lcom/applovin/impl/sdk/a/a$a;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_11
    return-void
.end method

.method public failedToReceiveAd(I)V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/a$a;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_c

    new-instance v0, Lcom/applovin/impl/sdk/a/a$a$2;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/a/a$a$2;-><init>(Lcom/applovin/impl/sdk/a/a$a;I)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method
