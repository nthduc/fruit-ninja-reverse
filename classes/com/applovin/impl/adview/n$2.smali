.class Lcom/applovin/impl/adview/n$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/adview/n;->a(Landroid/net/Uri;)V
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

    iput-object p1, p0, Lcom/applovin/impl/adview/n$2;->a:Lcom/applovin/impl/adview/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/graphics/PointF;)V
    .registers 3

    iget-object p1, p0, Lcom/applovin/impl/adview/n$2;->a:Lcom/applovin/impl/adview/n;

    invoke-static {p1, p2}, Lcom/applovin/impl/adview/n;->a(Lcom/applovin/impl/adview/n;Landroid/graphics/PointF;)V

    return-void
.end method
