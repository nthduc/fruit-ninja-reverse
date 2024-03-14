.class Lcom/chartboost/sdk/impl/o1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/o1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/o1;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/o1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/o1$a;->a:Lcom/chartboost/sdk/impl/o1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o1$a;->a:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/impl/o1;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_49

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2a

    const/4 p2, 0x2

    if-eq v0, p2, :cond_22

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1a

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1a

    goto :goto_48

    .line 16
    :cond_1a
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o1$a;->a:Lcom/chartboost/sdk/impl/o1;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/o1;->a:Lcom/chartboost/sdk/impl/o1$c;

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/o1$c;->a(Z)V

    goto :goto_48

    .line 17
    :cond_22
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o1$a;->a:Lcom/chartboost/sdk/impl/o1;

    iget-object p2, p2, Lcom/chartboost/sdk/impl/o1;->a:Lcom/chartboost/sdk/impl/o1$c;

    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/impl/o1$c;->a(Z)V

    goto :goto_48

    .line 20
    :cond_2a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o1$a;->a:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/chartboost/sdk/impl/o1$a;->a:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_41

    if-eqz p1, :cond_41

    .line 21
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o1$a;->a:Lcom/chartboost/sdk/impl/o1;

    invoke-virtual {p1, p2}, Lcom/chartboost/sdk/impl/o1;->a(Landroid/view/MotionEvent;)V

    .line 22
    :cond_41
    iget-object p1, p0, Lcom/chartboost/sdk/impl/o1$a;->a:Lcom/chartboost/sdk/impl/o1;

    iget-object p1, p1, Lcom/chartboost/sdk/impl/o1;->a:Lcom/chartboost/sdk/impl/o1$c;

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/o1$c;->a(Z)V

    :goto_48
    return v2

    .line 23
    :cond_49
    iget-object p2, p0, Lcom/chartboost/sdk/impl/o1$a;->a:Lcom/chartboost/sdk/impl/o1;

    iget-object p2, p2, Lcom/chartboost/sdk/impl/o1;->a:Lcom/chartboost/sdk/impl/o1$c;

    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/impl/o1$c;->a(Z)V

    return p1
.end method
