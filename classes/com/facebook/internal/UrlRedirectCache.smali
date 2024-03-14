.class Lcom/facebook/internal/UrlRedirectCache;
.super Ljava/lang/Object;
.source "UrlRedirectCache.java"


# static fields
.field private static final REDIRECT_CONTENT_TAG:Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "UrlRedirectCache"

.field private static urlRedirectCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_Redirect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cacheUriRedirect(Landroid/net/Uri;Landroid/net/Uri;)V
    .registers 5

    if-eqz p0, :cond_28

    if-nez p1, :cond_5

    goto :goto_28

    :cond_5
    const/4 v0, 0x0

    .line 95
    :try_start_6
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    .line 97
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1f} :catch_25
    .catchall {:try_start_6 .. :try_end_1f} :catchall_20

    goto :goto_25

    :catchall_20
    move-exception p0

    .line 101
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 102
    throw p0

    .line 101
    :catch_25
    :goto_25
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :cond_28
    :goto_28
    return-void
.end method

.method static clearCache()V
    .registers 6

    .line 107
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/internal/FileLruCache;->clearCache()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_26

    :catch_8
    move-exception v0

    .line 109
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearCache failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method static declared-synchronized getCache()Lcom/facebook/internal/FileLruCache;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/facebook/internal/UrlRedirectCache;

    monitor-enter v0

    .line 43
    :try_start_3
    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    if-nez v1, :cond_15

    .line 44
    new-instance v1, Lcom/facebook/internal/FileLruCache;

    sget-object v2, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    new-instance v3, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v3}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/FileLruCache;-><init>(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v1, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    .line 46
    :cond_15
    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_19

    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getRedirectedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 54
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 58
    :try_start_8
    invoke-static {}, Lcom/facebook/internal/UrlRedirectCache;->getCache()Lcom/facebook/internal/FileLruCache;

    move-result-object v1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_59
    .catchall {:try_start_8 .. :try_end_c} :catchall_51

    const/4 v2, 0x0

    move-object v4, v0

    const/4 v3, 0x0

    .line 60
    :goto_f
    :try_start_f
    sget-object v5, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, p0, v5}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_3e

    const/4 v3, 0x1

    .line 64
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_4f
    .catchall {:try_start_f .. :try_end_1d} :catchall_4c

    const/16 v4, 0x80

    .line 65
    :try_start_1f
    new-array v4, v4, [C

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    :goto_26
    array-length v6, v4

    invoke-virtual {p0, v4, v2, v6}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v6

    if-lez v6, :cond_31

    .line 69
    invoke-virtual {v5, v4, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 71
    :cond_31
    invoke-static {p0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 74
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_38} :catch_5a
    .catchall {:try_start_1f .. :try_end_38} :catchall_3c

    move-object v7, v4

    move-object v4, p0

    move-object p0, v7

    goto :goto_f

    :catchall_3c
    move-exception v0

    goto :goto_55

    :cond_3e
    if-eqz v3, :cond_48

    .line 78
    :try_start_40
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_44} :catch_4f
    .catchall {:try_start_40 .. :try_end_44} :catchall_4c

    .line 82
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :cond_48
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_5d

    :catchall_4c
    move-exception v0

    move-object p0, v4

    goto :goto_55

    :catch_4f
    move-object p0, v4

    goto :goto_5a

    :catchall_51
    move-exception p0

    move-object v7, v0

    move-object v0, p0

    move-object p0, v7

    :goto_55
    invoke-static {p0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 83
    throw v0

    :catch_59
    move-object p0, v0

    .line 82
    :catch_5a
    :goto_5a
    invoke-static {p0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :goto_5d
    return-object v0
.end method
