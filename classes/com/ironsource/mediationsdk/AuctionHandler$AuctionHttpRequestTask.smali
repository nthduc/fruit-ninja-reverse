.class Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;
.super Landroid/os/AsyncTask;
.source "AuctionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/AuctionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuctionHttpRequestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mAuctionFallback:Ljava/lang/String;

.field private mAuctionId:Ljava/lang/String;

.field private mAuctionListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/mediationsdk/AuctionEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentAuctionTrial:I

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

.field private mRequestData:Lorg/json/JSONObject;

.field private mRequestStartTime:J

.field private mWaterfall:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ironsource/mediationsdk/AuctionResponseItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/AuctionEventListener;)V
    .registers 3

    .line 172
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string v0, "other"

    .line 170
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private handleResponse(Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 312
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_27

    :try_start_d
    const-string p1, "response"

    .line 316
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 317
    new-instance v0, Lorg/json/JSONObject;

    const-string p2, "C38FB23A402222A0C17D34A92F971D1F"

    invoke-static {p2, p1}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_27

    .line 320
    :catch_1f
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "decryption error"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 324
    :cond_27
    :goto_27
    invoke-static {}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getInstance()Lcom/ironsource/mediationsdk/AuctionDataUtils;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ironsource/mediationsdk/AuctionDataUtils;->getAuctionDataFromResponse(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;

    move-result-object p1

    .line 326
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getAuctionId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionId:Ljava/lang/String;

    .line 327
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getWaterfall()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mWaterfall:Ljava/util/List;

    .line 328
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getGenericNotifications()Lcom/ironsource/mediationsdk/AuctionResponseItem;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    .line 329
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getErrorCode()I

    move-result p2

    iput p2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    .line 330
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/AuctionDataUtils$AuctionData;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    return-void

    .line 310
    :cond_4e
    new-instance p1, Lorg/json/JSONException;

    const-string p2, "empty response"

    invoke-direct {p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private prepareAuctionRequest(Ljava/net/URL;J)Ljava/net/HttpURLConnection;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int p3, p2

    .line 299
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const-string p2, "POST"

    .line 300
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string p2, "Content-Type"

    const-string v0, "application/json; charset=utf-8"

    .line 301
    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 p2, 0x1

    .line 303
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 304
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    return-object p1
.end method

.method private readResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 335
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    :goto_13
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 340
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13

    .line 342
    :cond_1d
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 343
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 345
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private sendAuctionRequest(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .line 284
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 285
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 287
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "C38FB23A402222A0C17D34A92F971D1F"

    .line 288
    invoke-static {v2, p2}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x1

    .line 289
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string p2, "{\"request\" : \"%1$s\"}"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 290
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 292
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 293
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 294
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private waitUntilNextTrial(JJ)V
    .registers 7

    .line 276
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p3

    sub-long/2addr p1, v0

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-lez v0, :cond_14

    .line 278
    invoke-static {p1, p2}, Landroid/os/SystemClock;->sleep(J)V

    :cond_14
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;
    .registers 16

    const-string v0, "other"

    .line 178
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mRequestStartTime:J

    const/4 v1, 0x0

    .line 187
    :try_start_e
    new-instance v2, Ljava/net/URL;

    aget-object v3, p1, v1

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 188
    aget-object v4, p1, v3

    check-cast v4, Lorg/json/JSONObject;

    iput-object v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mRequestData:Lorg/json/JSONObject;

    const/4 v4, 0x2

    .line 189
    aget-object v4, p1, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x3

    .line 190
    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x4

    .line 191
    aget-object p1, p1, v6

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_39} :catch_11f

    .line 202
    iput v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    const/4 p1, 0x0

    :goto_3c
    iget v8, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    if-ge v8, v5, :cond_113

    .line 204
    :try_start_40
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 206
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v10

    sget-object v11, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Auction Handler: auction trial "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    add-int/2addr v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " out of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " max trials"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 212
    invoke-direct {p0, v2, v6, v7}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->prepareAuctionRequest(Ljava/net/URL;J)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 213
    iget-object v10, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mRequestData:Lorg/json/JSONObject;

    invoke-direct {p0, p1, v10}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->sendAuctionRequest(Ljava/net/HttpURLConnection;Lorg/json/JSONObject;)V

    .line 215
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_a8

    const/16 v11, 0x3e9

    .line 217
    iput v11, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    .line 218
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Auction status not 200 error, error code response from server - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 222
    iget v10, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    add-int/lit8 v11, v5, -0x1

    if-ge v10, v11, :cond_10c

    .line 223
    invoke-direct {p0, v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->waitUntilNextTrial(JJ)V

    goto :goto_10c

    .line 228
    :cond_a8
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->readResponse(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v8
    :try_end_ac
    .catch Ljava/net/SocketTimeoutException; {:try_start_40 .. :try_end_ac} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_ac} :catch_e7

    .line 231
    :try_start_ac
    invoke-direct {p0, v8, v4}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->handleResponse(Ljava/lang/String;Z)V
    :try_end_af
    .catch Lorg/json/JSONException; {:try_start_ac .. :try_end_af} :catch_b7
    .catch Ljava/net/SocketTimeoutException; {:try_start_ac .. :try_end_af} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_e7

    .line 248
    :try_start_af
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 249
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_b7
    move-exception v8

    .line 234
    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d3

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    const-string v9, "decryption error"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d3

    const/16 v8, 0x3eb

    .line 235
    iput v8, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    const-string v8, "Auction decryption error"

    .line 236
    iput-object v8, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    goto :goto_db

    :cond_d3
    const/16 v8, 0x3ea

    .line 239
    iput v8, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    const-string v8, "Auction parsing error"

    .line 240
    iput-object v8, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    :goto_db
    const-string v8, "parsing"

    .line 243
    iput-object v8, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 245
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_e6
    .catch Ljava/net/SocketTimeoutException; {:try_start_af .. :try_end_e6} :catch_fe
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_e6} :catch_e7

    return-object p1

    :catch_e7
    move-exception v2

    if-eqz p1, :cond_ed

    .line 259
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ed
    const/16 p1, 0x3e8

    .line 261
    iput p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    .line 262
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    .line 263
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    .line 264
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_fe
    nop

    if-eqz p1, :cond_104

    .line 253
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_104
    const/16 v8, 0x3ee

    .line 255
    iput v8, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    const-string v8, "Connection timed out"

    .line 256
    iput-object v8, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    .line 202
    :cond_10c
    :goto_10c
    iget v8, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    goto/16 :goto_3c

    :cond_113
    sub-int/2addr v5, v3

    .line 269
    iput v5, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    const-string p1, "trials_fail"

    .line 271
    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    .line 272
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_11f
    move-exception p1

    const/16 v2, 0x3ef

    .line 194
    iput v2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    .line 195
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    .line 196
    iput v1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    .line 197
    iput-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    .line 198
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 160
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 10

    .line 350
    iget-object v0, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ironsource/mediationsdk/AuctionEventListener;

    if-nez v1, :cond_c

    return-void

    .line 355
    :cond_c
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mRequestStartTime:J

    sub-long v6, v2, v4

    .line 356
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 357
    iget-object v2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mWaterfall:Ljava/util/List;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mGenericNotifications:Lcom/ironsource/mediationsdk/AuctionResponseItem;

    iget p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    add-int/lit8 v5, p1, 0x1

    invoke-interface/range {v1 .. v7}, Lcom/ironsource/mediationsdk/AuctionEventListener;->onAuctionSuccess(Ljava/util/List;Ljava/lang/String;Lcom/ironsource/mediationsdk/AuctionResponseItem;IJ)V

    goto :goto_3a

    .line 359
    :cond_2d
    iget v2, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorCode:I

    iget-object v3, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mErrorMessage:Ljava/lang/String;

    iget p1, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mCurrentAuctionTrial:I

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->mAuctionFallback:Ljava/lang/String;

    invoke-interface/range {v1 .. v7}, Lcom/ironsource/mediationsdk/AuctionEventListener;->onAuctionFailed(ILjava/lang/String;ILjava/lang/String;J)V

    :goto_3a
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 160
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/AuctionHandler$AuctionHttpRequestTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
