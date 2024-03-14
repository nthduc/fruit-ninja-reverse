.class Lcom/chartboost/sdk/Networking/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Networking/i;->b(Lcom/chartboost/sdk/Model/c;Ljava/lang/String;Lcom/chartboost/sdk/impl/p0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/chartboost/sdk/Model/c;

.field final synthetic c:Lcom/chartboost/sdk/impl/p0;

.field final synthetic d:Lcom/chartboost/sdk/Networking/i;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Networking/i;Ljava/lang/String;Lcom/chartboost/sdk/Model/c;Lcom/chartboost/sdk/impl/p0;)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/Networking/i$a;->d:Lcom/chartboost/sdk/Networking/i;

    iput-object p2, p0, Lcom/chartboost/sdk/Networking/i$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/sdk/Networking/i$a;->b:Lcom/chartboost/sdk/Model/c;

    iput-object p4, p0, Lcom/chartboost/sdk/Networking/i$a;->c:Lcom/chartboost/sdk/impl/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/chartboost/sdk/Networking/i$a$a;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/Networking/i$a$a;-><init>(Lcom/chartboost/sdk/Networking/i$a;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/chartboost/sdk/Networking/i$a;->d:Lcom/chartboost/sdk/Networking/i;

    iget-object p1, p1, Lcom/chartboost/sdk/Networking/i;->d:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Networking/i$a;->a:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/chartboost/sdk/Networking/i$a;->d:Lcom/chartboost/sdk/Networking/i;

    iget-object v1, v1, Lcom/chartboost/sdk/Networking/i;->c:Lcom/chartboost/sdk/Networking/h;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Networking/h;->d()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_56

    if-eqz v1, :cond_52

    const/4 v1, 0x0

    .line 6
    :try_start_d
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/chartboost/sdk/Networking/i$a;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1a} :catch_3a
    .catchall {:try_start_d .. :try_end_1a} :catchall_37

    const/4 v1, 0x0

    .line 8
    :try_start_1b
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v1, 0x2710

    .line 9
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 10
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "Location"

    .line 11
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2c} :catch_35
    .catchall {:try_start_1b .. :try_end_2c} :catchall_4b

    if-eqz v1, :cond_2f

    move-object v0, v1

    :cond_2f
    if-eqz v2, :cond_52

    .line 18
    :try_start_31
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_56

    goto :goto_52

    :catch_35
    move-exception v1

    goto :goto_3e

    :catchall_37
    move-exception v0

    move-object v2, v1

    goto :goto_4c

    :catch_3a
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_3e
    :try_start_3e
    const-string v3, "CBURLOpener"

    const-string v4, "Exception raised while opening a HTTP Conection"

    .line 19
    invoke-static {v3, v4, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4b

    if-eqz v2, :cond_52

    .line 22
    :try_start_47
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_52

    :catchall_4b
    move-exception v0

    :goto_4c
    if-eqz v2, :cond_51

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 23
    :cond_51
    throw v0

    .line 26
    :cond_52
    :goto_52
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Networking/i$a;->a(Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_55} :catch_56

    goto :goto_5e

    :catch_56
    move-exception v0

    .line 28
    const-class v1, Lcom/chartboost/sdk/Networking/i;

    const-string v2, "open followTask"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_5e
    return-void
.end method
