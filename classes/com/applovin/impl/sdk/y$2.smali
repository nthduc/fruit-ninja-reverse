.class Lcom/applovin/impl/sdk/y$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/sdk/y;-><init>(Lcom/applovin/mediation/ads/MaxAdView;Lcom/applovin/impl/sdk/j;Lcom/applovin/impl/sdk/y$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/y;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/y;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/sdk/y$2;->a:Lcom/applovin/impl/sdk/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/y$2;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->d(Lcom/applovin/impl/sdk/y;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/y$2;->a:Lcom/applovin/impl/sdk/y;

    invoke-static {v0}, Lcom/applovin/impl/sdk/y;->e(Lcom/applovin/impl/sdk/y;)V

    const/4 v0, 0x1

    return v0
.end method
