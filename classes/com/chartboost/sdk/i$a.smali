.class Lcom/chartboost/sdk/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/p0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/i;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/i;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/i$a;->a:Lcom/chartboost/sdk/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/p0;Lcom/chartboost/sdk/Model/CBError;)V
    .registers 3

    .line 2
    iget-object p1, p0, Lcom/chartboost/sdk/i$a;->a:Lcom/chartboost/sdk/i;

    invoke-static {p1}, Lcom/chartboost/sdk/i;->a(Lcom/chartboost/sdk/i;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/chartboost/sdk/i;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/p0;Lorg/json/JSONObject;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/chartboost/sdk/i$a;->a:Lcom/chartboost/sdk/i;

    invoke-static {p1}, Lcom/chartboost/sdk/i;->a(Lcom/chartboost/sdk/i;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/chartboost/sdk/i;->a(Ljava/lang/Runnable;Lorg/json/JSONObject;)V

    return-void
.end method
