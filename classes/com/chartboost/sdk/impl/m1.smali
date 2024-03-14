.class public final Lcom/chartboost/sdk/impl/m1;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/m1;->a:Z

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    const/high16 p1, -0x56000000

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/l1;Lcom/chartboost/sdk/Model/a;)V
    .registers 4

    .line 1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/m1;->a:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0, p0, p2}, Lcom/chartboost/sdk/impl/l1;->a(ZLandroid/view/View;Lcom/chartboost/sdk/Model/a;)V

    .line 3
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/m1;->a:Z

    :cond_a
    return-void
.end method
