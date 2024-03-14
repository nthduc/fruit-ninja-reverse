.class Lcom/applovin/impl/sdk/w$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/w;-><init>(Lcom/applovin/impl/sdk/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/w;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/w;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/w$2;->a:Lcom/applovin/impl/sdk/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 3

    const/16 v0, 0x14

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/applovin/impl/sdk/w$2;->a:Lcom/applovin/impl/sdk/w;

    invoke-static {p1}, Lcom/applovin/impl/sdk/w;->b(Lcom/applovin/impl/sdk/w;)V

    :cond_9
    return-void
.end method
