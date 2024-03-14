.class Lcom/chartboost/sdk/impl/l0$a;
.super Lcom/chartboost/sdk/impl/o1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/l0;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/i0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/chartboost/sdk/impl/l0;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/l0;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/l0$a;->e:Lcom/chartboost/sdk/impl/l0;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/o1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/l0$a;->e:Lcom/chartboost/sdk/impl/l0;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/l0;->e:Lcom/chartboost/sdk/impl/o1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 2
    iget-object p1, p0, Lcom/chartboost/sdk/impl/l0$a;->e:Lcom/chartboost/sdk/impl/l0;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/l0;->a:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/i0;->i()Lcom/chartboost/sdk/impl/i0$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/i0$b;->g()V

    return-void
.end method
