.class Lcom/chartboost/sdk/impl/o0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/o0;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/o0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/o0$c;->a:Lcom/chartboost/sdk/impl/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0$c;->a:Lcom/chartboost/sdk/impl/o0;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o0;->b:Lcom/chartboost/sdk/impl/n0;

    const/16 v1, 0x8

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0$c;->a:Lcom/chartboost/sdk/impl/o0;

    iget-object v2, v0, Lcom/chartboost/sdk/impl/o0;->h:Lcom/chartboost/sdk/impl/i0;

    iget-boolean v2, v2, Lcom/chartboost/sdk/impl/i0;->R:Z

    if-eqz v2, :cond_18

    .line 4
    iget-object v0, v0, Lcom/chartboost/sdk/impl/o0;->f:Lcom/chartboost/sdk/impl/k0;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_18
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0$c;->a:Lcom/chartboost/sdk/impl/o0;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o0;->c:Lcom/chartboost/sdk/impl/n0;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0$c;->a:Lcom/chartboost/sdk/impl/o0;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o0;->d:Lcom/chartboost/sdk/impl/o1;

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_29
    return-void
.end method
