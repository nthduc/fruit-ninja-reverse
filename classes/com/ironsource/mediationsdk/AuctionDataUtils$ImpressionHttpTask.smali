.class Lcom/ironsource/mediationsdk/AuctionDataUtils$ImpressionHttpTask;
.super Landroid/os/AsyncTask;
.source "AuctionDataUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/AuctionDataUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImpressionHttpTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final SERVER_REQUEST_TIMEOUT:I = 0x3a98


# direct methods
.method constructor <init>()V
    .registers 1

    .line 451
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    const/4 v0, 0x0

    .line 457
    :try_start_1
    new-instance v1, Ljava/net/URL;

    aget-object p1, p1, v0

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string v1, "GET"

    .line 460
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x3a98

    .line 461
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 462
    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 463
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 465
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 466
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    const/16 p1, 0xc8

    if-ne v1, p1, :cond_2b

    const/4 p1, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    .line 468
    :goto_2c
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_31

    return-object p1

    .line 472
    :catch_31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 451
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$ImpressionHttpTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 2

    .line 478
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 451
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$ImpressionHttpTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
