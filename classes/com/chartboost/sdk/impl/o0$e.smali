.class Lcom/chartboost/sdk/impl/o0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/o0;->f()V
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
    iput-object p1, p0, Lcom/chartboost/sdk/impl/o0$e;->a:Lcom/chartboost/sdk/impl/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o0$e;->a:Lcom/chartboost/sdk/impl/o0;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/o0;->g:Lcom/chartboost/sdk/impl/k1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
