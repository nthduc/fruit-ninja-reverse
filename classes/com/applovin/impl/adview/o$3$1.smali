.class Lcom/applovin/impl/adview/o$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/o$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/o$3;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/o$3;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/o$3$1;->a:Lcom/applovin/impl/adview/o$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/adview/o$3$1;->a:Lcom/applovin/impl/adview/o$3;

    iget-object v0, v0, Lcom/applovin/impl/adview/o$3;->c:Lcom/applovin/impl/adview/o;

    iget-object v1, p0, Lcom/applovin/impl/adview/o$3$1;->a:Lcom/applovin/impl/adview/o$3;

    iget-object v1, v1, Lcom/applovin/impl/adview/o$3;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/applovin/impl/adview/o;->a(Lcom/applovin/impl/adview/o;Landroid/content/Context;)V

    return-void
.end method
