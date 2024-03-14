.class Lcom/chartboost/sdk/impl/u1$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/u1;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/u1$d;

.field final synthetic b:Lcom/chartboost/sdk/impl/u1;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/u1;Lcom/chartboost/sdk/impl/u1$d;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u1$b;->b:Lcom/chartboost/sdk/impl/u1;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/u1$b;->a:Lcom/chartboost/sdk/impl/u1$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u1$b;->a:Lcom/chartboost/sdk/impl/u1$d;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    if-eqz v0, :cond_14

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u1$b;->b:Lcom/chartboost/sdk/impl/u1;

    const-string v1, "onBackground"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u1;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u1$b;->a:Lcom/chartboost/sdk/impl/u1$d;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/u1$d;->h:Lcom/chartboost/sdk/impl/t1;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    :cond_14
    return-void
.end method
