.class public Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;
.super Landroid/os/AsyncTask;
.source "IronSourceAsyncHttpRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 6

    const/4 v0, 0x0

    .line 19
    :try_start_1
    new-instance v1, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_29
    .catchall {:try_start_1 .. :try_end_f} :catchall_27

    const/16 v0, 0xbb8

    .line 21
    :try_start_11
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 22
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_22
    .catchall {:try_start_11 .. :try_end_17} :catchall_1d

    if-eqz p1, :cond_32

    .line 29
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_32

    :catchall_1d
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_38

    :catch_22
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_2a

    :catchall_27
    move-exception p1

    goto :goto_38

    :catch_29
    move-exception p1

    .line 25
    :goto_2a
    :try_start_2a
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_27

    if-eqz v0, :cond_32

    .line 29
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_32
    :goto_32
    const/4 p1, 0x1

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :goto_38
    if-eqz v0, :cond_3d

    .line 29
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 31
    :cond_3d
    throw p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 10
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
