.class Lcom/chartboost/sdk/impl/v1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/v1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/v1;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/v1;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/v1$a;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$a;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->c(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/s1;

    move-result-object v0

    const-string v1, "NativeBridgeCommand"

    if-eqz v0, :cond_14

    .line 2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$a;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->c(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/s1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s1;->onHideCustomView()V

    goto :goto_19

    :cond_14
    const-string v0, "Video completed command error - client"

    .line 4
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_19
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$a;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 8
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$a;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/u1;->b(I)V

    .line 9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v1$a;->a:Lcom/chartboost/sdk/impl/v1;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/v1;->a(Lcom/chartboost/sdk/impl/v1;)Lcom/chartboost/sdk/impl/u1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u1;->z()V

    goto :goto_3a

    :cond_35
    const-string v0, "Video completed command error - protocol"

    .line 11
    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3a
    return-void
.end method
