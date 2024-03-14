.class Lcom/applovin/impl/adview/o$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/o;->dismiss()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/o;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/o;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/o$7;->a:Lcom/applovin/impl/adview/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/adview/o$7;->a:Lcom/applovin/impl/adview/o;

    invoke-static {v0}, Lcom/applovin/impl/adview/o;->b(Lcom/applovin/impl/adview/o;)Lcom/applovin/impl/adview/j;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/applovin/impl/adview/o$7;->a:Lcom/applovin/impl/adview/o;

    invoke-static {v0}, Lcom/applovin/impl/adview/o;->b(Lcom/applovin/impl/adview/o;)Lcom/applovin/impl/adview/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/applovin/impl/adview/j;->dismiss()V

    :cond_11
    return-void
.end method
