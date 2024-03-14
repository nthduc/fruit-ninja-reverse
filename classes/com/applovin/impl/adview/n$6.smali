.class Lcom/applovin/impl/adview/n$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/n;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/adview/n;


# direct methods
.method constructor <init>(Lcom/applovin/impl/adview/n;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/adview/n$6;->a:Lcom/applovin/impl/adview/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/applovin/impl/adview/n$6;->a:Lcom/applovin/impl/adview/n;

    invoke-static {p1}, Lcom/applovin/impl/adview/n;->r(Lcom/applovin/impl/adview/n;)Lcom/applovin/impl/adview/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/adview/h;->performClick()Z

    return-void
.end method
