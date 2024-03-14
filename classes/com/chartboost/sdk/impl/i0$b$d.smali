.class Lcom/chartboost/sdk/impl/i0$b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/i0$b;->e(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/i0$b;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/i0$b;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i0$b$d;->a:Lcom/chartboost/sdk/impl/i0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b$d;->a:Lcom/chartboost/sdk/impl/i0$b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/i0$b;->s:Lcom/chartboost/sdk/impl/j0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/m0;->a(Z)V

    return-void
.end method
