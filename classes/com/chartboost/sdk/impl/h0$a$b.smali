.class Lcom/chartboost/sdk/impl/h0$a$b;
.super Lcom/chartboost/sdk/impl/o1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/h0$a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/chartboost/sdk/impl/h0$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/h0$a;Landroid/content/Context;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h0$a$b;->e:Lcom/chartboost/sdk/impl/h0$a;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/o1;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/chartboost/sdk/impl/h0$a$b;->e:Lcom/chartboost/sdk/impl/h0$a;

    invoke-virtual {p1}, Lcom/chartboost/sdk/impl/h0$a;->c()V

    return-void
.end method
