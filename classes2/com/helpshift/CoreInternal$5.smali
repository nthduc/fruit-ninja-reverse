.class final Lcom/helpshift/CoreInternal$5;
.super Ljava/lang/Object;
.source "CoreInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/helpshift/CoreInternal;->handlePush(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 146
    iput-object p1, p0, Lcom/helpshift/CoreInternal$5;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/helpshift/CoreInternal$5;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "Helpshift_CoreInternal"

    const-string v1, "Handling push"

    .line 149
    invoke-static {v0, v1}, Lcom/helpshift/util/HSLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/helpshift/CoreInternal;->apiProvider:Lcom/helpshift/Core$ApiProvider;

    iget-object v1, p0, Lcom/helpshift/CoreInternal$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/helpshift/CoreInternal$5;->val$intent:Landroid/content/Intent;

    invoke-interface {v0, v1, v2}, Lcom/helpshift/Core$ApiProvider;->_handlePush(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
