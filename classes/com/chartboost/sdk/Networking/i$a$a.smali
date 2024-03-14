.class Lcom/chartboost/sdk/Networking/i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Networking/i$a;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/chartboost/sdk/Networking/i$a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Networking/i$a;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/Networking/i$a$a;->b:Lcom/chartboost/sdk/Networking/i$a;

    iput-object p2, p0, Lcom/chartboost/sdk/Networking/i$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/i$a$a;->b:Lcom/chartboost/sdk/Networking/i$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Networking/i$a;->d:Lcom/chartboost/sdk/Networking/i;

    iget-object v1, p0, Lcom/chartboost/sdk/Networking/i$a$a;->b:Lcom/chartboost/sdk/Networking/i$a;

    iget-object v1, v1, Lcom/chartboost/sdk/Networking/i$a;->b:Lcom/chartboost/sdk/Model/c;

    iget-object v2, p0, Lcom/chartboost/sdk/Networking/i$a$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/chartboost/sdk/Networking/i$a$a;->b:Lcom/chartboost/sdk/Networking/i$a;

    iget-object v3, v3, Lcom/chartboost/sdk/Networking/i$a;->c:Lcom/chartboost/sdk/impl/p0;

    invoke-virtual {v0, v1, v2, v3}, Lcom/chartboost/sdk/Networking/i;->c(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/p0;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception v0

    .line 3
    const-class v1, Lcom/chartboost/sdk/Networking/i;

    const-string v2, "open openOnUiThread Runnable.run"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1a
    return-void
.end method
