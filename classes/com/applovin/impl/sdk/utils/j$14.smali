.class final Lcom/applovin/impl/sdk/utils/j$14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/utils/j;->f(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/mediation/MaxAdListener;

.field final synthetic b:Lcom/applovin/mediation/MaxAd;


# direct methods
.method constructor <init>(Lcom/applovin/mediation/MaxAdListener;Lcom/applovin/mediation/MaxAd;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/j$14;->a:Lcom/applovin/mediation/MaxAdListener;

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/j$14;->b:Lcom/applovin/mediation/MaxAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/j$14;->a:Lcom/applovin/mediation/MaxAdListener;

    check-cast v0, Lcom/applovin/mediation/MaxRewardedAdListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/j$14;->b:Lcom/applovin/mediation/MaxAd;

    invoke-interface {v0, v1}, Lcom/applovin/mediation/MaxRewardedAdListener;->onRewardedVideoCompleted(Lcom/applovin/mediation/MaxAd;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "ListenerCallbackInvoker"

    const-string v2, "Unable to notify ad event listener about rewarded video completing"

    invoke-static {v1, v2, v0}, Lcom/applovin/impl/sdk/q;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_12
    return-void
.end method
