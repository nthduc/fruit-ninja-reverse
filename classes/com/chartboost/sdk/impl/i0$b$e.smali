.class Lcom/chartboost/sdk/impl/i0$b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/i0$b;->c()V
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
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i0$b$e;->a:Lcom/chartboost/sdk/impl/i0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i0$b$e;->a:Lcom/chartboost/sdk/impl/i0$b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/i0$b;->u:Lcom/chartboost/sdk/impl/i0;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    .line 3
    const-class v1, Lcom/chartboost/sdk/impl/i0$b;

    const-string v2, "onCloseButton Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_10
    return-void
.end method
