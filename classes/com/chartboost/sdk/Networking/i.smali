.class public Lcom/chartboost/sdk/Networking/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Lcom/chartboost/sdk/Networking/g;

.field final c:Lcom/chartboost/sdk/Networking/h;

.field final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/chartboost/sdk/Networking/g;Lcom/chartboost/sdk/Networking/h;Landroid/os/Handler;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/chartboost/sdk/Networking/i;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lcom/chartboost/sdk/Networking/i;->b:Lcom/chartboost/sdk/Networking/g;

    .line 4
    iput-object p3, p0, Lcom/chartboost/sdk/Networking/i;->c:Lcom/chartboost/sdk/Networking/h;

    .line 5
    iput-object p4, p0, Lcom/chartboost/sdk/Networking/i;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/p0;)V
    .registers 4

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/chartboost/sdk/Networking/i;->b(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/p0;)V

    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/p0;)V
    .registers 7

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/c;->C:Z

    .line 2
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->w()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x4

    .line 3
    iput v0, p1, Lcom/chartboost/sdk/Model/c;->b:I

    :cond_e
    if-nez p2, :cond_18

    .line 8
    sget-object p1, Lcom/chartboost/sdk/j;->d:Lcom/chartboost/sdk/a;

    if-eqz p1, :cond_2b

    .line 9
    invoke-interface {p1, p3, p4}, Lcom/chartboost/sdk/a;->didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V

    goto :goto_2b

    :cond_18
    if-eqz p1, :cond_24

    .line 11
    iget-object p1, p1, Lcom/chartboost/sdk/Model/c;->y:Lcom/chartboost/sdk/impl/p0;

    if-eqz p1, :cond_24

    .line 12
    iget-object p2, p0, Lcom/chartboost/sdk/Networking/i;->b:Lcom/chartboost/sdk/Networking/g;

    invoke-virtual {p2, p1}, Lcom/chartboost/sdk/Networking/g;->a(Lcom/chartboost/sdk/Networking/c;)V

    goto :goto_2b

    :cond_24
    if-eqz p5, :cond_2b

    .line 14
    iget-object p1, p0, Lcom/chartboost/sdk/Networking/i;->b:Lcom/chartboost/sdk/Networking/g;

    invoke-virtual {p1, p5}, Lcom/chartboost/sdk/Networking/g;->a(Lcom/chartboost/sdk/Networking/c;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 15
    :try_start_1
    sget-object v1, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    .line 16
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    instance-of v3, v1, Landroid/app/Activity;

    if-nez v3, :cond_13

    const/high16 v3, 0x10000000

    .line 18
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    :cond_13
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/high16 v1, 0x10000

    .line 21
    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2c

    if-lez p1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    return v0

    :catch_2c
    move-exception p1

    const-string v1, "CBURLOpener"

    const-string v2, "Cannot open URL"

    .line 24
    invoke-static {v1, v2, p1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    const-class v1, Lcom/chartboost/sdk/Networking/i;

    const-string v2, "canOpenURL"

    invoke-static {v1, v2, p1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method

.method public b(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/p0;)V
    .registers 11

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_35

    .line 7
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    .line 9
    sget-object v5, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/chartboost/sdk/Networking/i;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/p0;)V

    return-void

    :cond_16
    const-string v1, "http"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/chartboost/sdk/Networking/i;->c(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/p0;)V

    return-void

    .line 18
    :cond_2a
    new-instance v0, Lcom/chartboost/sdk/Networking/i$a;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/chartboost/sdk/Networking/i$a;-><init>(Lcom/chartboost/sdk/Networking/i;Ljava/lang/String;Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/impl/p0;)V

    .line 63
    iget-object p1, p0, Lcom/chartboost/sdk/Networking/i;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 64
    :catch_35
    sget-object v5, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/chartboost/sdk/Networking/i;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/p0;)V

    return-void
.end method

.method c(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/p0;)V
    .registers 16

    const-string v0, "android.intent.action.VIEW"

    if-eqz p1, :cond_d

    .line 1
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->w()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x5

    .line 2
    iput v1, p1, Lcom/chartboost/sdk/Model/c;->b:I

    .line 5
    :cond_d
    sget-object v1, Lcom/chartboost/sdk/j;->l:Landroid/content/Context;

    if-nez v1, :cond_1c

    .line 11
    sget-object v6, Lcom/chartboost/sdk/Model/CBError$CBClickError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/chartboost/sdk/Networking/i;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/p0;)V

    return-void

    :cond_1c
    const/high16 v2, 0x10000000

    .line 16
    :try_start_1e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    instance-of v4, v1, Landroid/app/Activity;

    if-nez v4, :cond_2a

    .line 18
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 19
    :cond_2a
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 20
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_34} :catch_35

    goto :goto_89

    :catch_35
    nop

    const-string v3, "market://"

    .line 22
    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7f

    .line 24
    :try_start_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://market.android.com/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x9

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 25
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    instance-of v0, v1, Landroid/app/Activity;

    if-nez v0, :cond_61

    .line 27
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 28
    :cond_61
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 29
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_6b} :catch_6c

    goto :goto_89

    :catch_6c
    move-exception v0

    move-object v4, p2

    const-string p2, "CBURLOpener"

    const-string v1, "Exception raised openeing an inavld playstore URL"

    .line 31
    invoke-static {p2, v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    sget-object v5, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/chartboost/sdk/Networking/i;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/p0;)V

    return-void

    .line 36
    :cond_7f
    sget-object v10, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const/4 v8, 0x0

    move-object v6, p0

    move-object v7, p1

    move-object v9, p2

    move-object v11, p3

    invoke-virtual/range {v6 .. v11}, Lcom/chartboost/sdk/Networking/i;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/p0;)V

    :goto_89
    move-object v3, p2

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    .line 40
    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/Networking/i;->a(Lcom/chartboost/sdk/Model/c;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/impl/p0;)V

    return-void
.end method
