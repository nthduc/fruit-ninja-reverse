.class Lcom/chartboost/sdk/impl/h0$a$a;
.super Lcom/chartboost/sdk/impl/o1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/h0$a;-><init>(Lcom/chartboost/sdk/impl/h0;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/chartboost/sdk/impl/h0$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/h0$a;Landroid/content/Context;Lcom/chartboost/sdk/impl/h0;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h0$a$a;->e:Lcom/chartboost/sdk/impl/h0$a;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/o1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h0$a$a;->e:Lcom/chartboost/sdk/impl/h0$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/h0$a$a;->e:Lcom/chartboost/sdk/impl/h0$a;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/h0$a$a;->e:Lcom/chartboost/sdk/impl/h0$a;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/h0$a;->k:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/chartboost/sdk/impl/h0$a;->a(FFFF)V

    return-void
.end method
