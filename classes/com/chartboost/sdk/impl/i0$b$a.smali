.class Lcom/chartboost/sdk/impl/i0$b$a;
.super Lcom/chartboost/sdk/impl/o1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/i0$b;-><init>(Lcom/chartboost/sdk/impl/i0;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/chartboost/sdk/impl/i0$b;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/i0$b;Landroid/content/Context;Lcom/chartboost/sdk/impl/i0;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i0$b$a;->e:Lcom/chartboost/sdk/impl/i0$b;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/o1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b$a;->e:Lcom/chartboost/sdk/impl/i0$b;

    iget-object v0, p1, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget-object v0, v0, Lcom/chartboost/sdk/f;->g:Lcom/chartboost/sdk/Model/c;

    iget v0, v0, Lcom/chartboost/sdk/Model/c;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    .line 2
    iget-object p1, p1, Lcom/chartboost/sdk/impl/i0$b;->s:Lcom/chartboost/sdk/impl/j0;

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/m0;->a(Z)V

    .line 3
    :cond_11
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b$a;->e:Lcom/chartboost/sdk/impl/i0$b;

    iget-object v0, p1, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    iget v0, v0, Lcom/chartboost/sdk/impl/i0;->t:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1d

    .line 4
    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/i0$b;->d(Z)V

    .line 6
    :cond_1d
    iget-object p1, p0, Lcom/chartboost/sdk/impl/i0$b$a;->e:Lcom/chartboost/sdk/impl/i0$b;

    invoke-virtual {p1, v2}, Lcom/chartboost/sdk/impl/i0$b;->c(Z)V

    return-void
.end method
