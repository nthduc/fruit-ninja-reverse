.class final Lcom/applovin/impl/sdk/utils/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/utils/j;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/applovin/sdk/AppLovinAdDisplayListener;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/j$1;->a:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/j$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/j$1;->a:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    check-cast v0, Lcom/applovin/impl/sdk/ad/i;

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/j$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/applovin/impl/sdk/ad/i;->onAdDisplayFailed(Ljava/lang/String;)V

    return-void
.end method
