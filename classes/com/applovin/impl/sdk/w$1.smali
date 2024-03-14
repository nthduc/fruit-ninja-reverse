.class Lcom/applovin/impl/sdk/w$1;
.super Lcom/applovin/impl/sdk/utils/a;


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

    iput-object p1, p0, Lcom/applovin/impl/sdk/w$1;->a:Lcom/applovin/impl/sdk/w;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/utils/a;->onActivityResumed(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/applovin/impl/sdk/w$1;->a:Lcom/applovin/impl/sdk/w;

    invoke-static {p1}, Lcom/applovin/impl/sdk/w;->a(Lcom/applovin/impl/sdk/w;)V

    return-void
.end method
