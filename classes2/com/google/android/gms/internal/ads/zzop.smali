.class public final Lcom/google/android/gms/internal/ads/zzop;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzom;


# static fields
.field private static final zzbie:Ljava/util/regex/Pattern;

.field private static final zzbif:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final zzbig:Z

.field private final zzbih:I

.field private final zzbii:I

.field private final zzbij:Ljava/lang/String;

.field private final zzbik:Lcom/google/android/gms/internal/ads/zzpm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzpm<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbil:Lcom/google/android/gms/internal/ads/zzou;

.field private final zzbim:Lcom/google/android/gms/internal/ads/zzou;

.field private final zzbin:Lcom/google/android/gms/internal/ads/zzpa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzpa<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzop;",
            ">;"
        }
    .end annotation
.end field

.field private zzbio:Lcom/google/android/gms/internal/ads/zzon;

.field private zzbip:Ljava/net/HttpURLConnection;

.field private zzbiq:Ljava/io/InputStream;

.field private zzbir:Z

.field private zzbis:J

.field private zzbit:J

.field private zzbiu:J

.field private zzcq:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 210
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzop;->zzbie:Ljava/util/regex/Pattern;

    .line 211
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzop;->zzbif:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzpm;Lcom/google/android/gms/internal/ads/zzpa;IIZLcom/google/android/gms/internal/ads/zzou;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzpm<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzpa<",
            "-",
            "Lcom/google/android/gms/internal/ads/zzop;",
            ">;IIZ",
            "Lcom/google/android/gms/internal/ads/zzou;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzoz;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbij:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbik:Lcom/google/android/gms/internal/ads/zzpm;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbin:Lcom/google/android/gms/internal/ads/zzpa;

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzou;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzou;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbim:Lcom/google/android/gms/internal/ads/zzou;

    .line 6
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbih:I

    .line 7
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbii:I

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbig:Z

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbil:Lcom/google/android/gms/internal/ads/zzou;

    return-void
.end method

.method private final zza(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 154
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbih:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 155
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbii:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbim:Lcom/google/android/gms/internal/ads/zzou;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzou;->zzit()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    :cond_3a
    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, p3, v0

    if-nez v4, :cond_46

    cmp-long v0, p5, v2

    if-eqz v0, :cond_88

    :cond_46
    const/16 v0, 0x1b

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "bytes="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v1, p5, v2

    if-eqz v1, :cond_83

    .line 162
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-long/2addr p3, p5

    const-wide/16 p5, 0x1

    sub-long/2addr p3, p5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p5

    add-int/lit8 p5, p5, 0x14

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_83
    const-string p3, "Range"

    .line 163
    invoke-virtual {p1, p3, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_88
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbij:Ljava/lang/String;

    const-string p4, "User-Agent"

    invoke-virtual {p1, p4, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p7, :cond_98

    const-string p3, "Accept-Encoding"

    const-string p4, "identity"

    .line 166
    invoke-virtual {p1, p3, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_98
    invoke-virtual {p1, p8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p2, :cond_9f

    const/4 p3, 0x1

    goto :goto_a0

    :cond_9f
    const/4 p3, 0x0

    .line 168
    :goto_a0
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz p2, :cond_bf

    const-string p3, "POST"

    .line 170
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 171
    array-length p3, p2

    if-eqz p3, :cond_bf

    .line 172
    array-length p3, p2

    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 173
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 174
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p3

    .line 175
    invoke-virtual {p3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 176
    invoke-virtual {p3}, Ljava/io/OutputStream;->close()V

    goto :goto_c2

    .line 178
    :cond_bf
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_c2
    return-object p1
.end method

.method private static zzc(Ljava/net/HttpURLConnection;)J
    .registers 11

    const-string v0, "Content-Length"

    .line 181
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    const-string v3, "DefaultHttpDataSource"

    if-nez v1, :cond_36

    .line 183
    :try_start_10
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_15

    goto :goto_38

    .line 186
    :catch_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected Content-Length ["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const-wide/16 v4, -0x1

    :goto_38
    const-string v1, "Content-Range"

    .line 187
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 188
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cb

    .line 189
    sget-object v1, Lcom/google/android/gms/internal/ads/zzop;->zzbie:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_cb

    const/4 v6, 0x2

    .line 192
    :try_start_51
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gez v1, :cond_6e

    move-wide v4, v6

    goto :goto_cb

    :cond_6e
    cmp-long v1, v4, v6

    if-eqz v1, :cond_cb

    .line 196
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Inconsistent headers ["

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_a8
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_a8} :catch_aa

    move-wide v4, v0

    goto :goto_cb

    .line 200
    :catch_aa
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected Content-Range ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cb
    :goto_cb
    return-wide v4
.end method

.method private final zziq()V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbip:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_13

    .line 203
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 206
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbip:Ljava/net/HttpURLConnection;

    :cond_13
    return-void
.end method


# virtual methods
.method public final close()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzos;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbiq:Ljava/io/InputStream;

    if-eqz v2, :cond_7b

    .line 117
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbip:Ljava/net/HttpURLConnection;

    .line 118
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbit:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_13

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbit:J

    goto :goto_18

    :cond_13
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbit:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzop;->zzcq:J

    sub-long/2addr v3, v7

    .line 120
    :goto_18
    sget v7, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I

    const/16 v8, 0x13

    if-eq v7, v8, :cond_24

    sget v7, Lcom/google/android/gms/internal/ads/zzpq;->SDK_INT:I
    :try_end_20
    .catchall {:try_start_2 .. :try_end_20} :catchall_8e

    const/16 v8, 0x14

    if-ne v7, v8, :cond_6b

    .line 121
    :cond_24
    :try_start_24
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    cmp-long v7, v3, v5

    if-nez v7, :cond_34

    .line 123
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3a

    goto :goto_6b

    :cond_34
    const-wide/16 v5, 0x800

    cmp-long v7, v3, v5

    if-lez v7, :cond_6b

    .line 126
    :cond_3a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 129
    :cond_52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "unexpectedEndOfInput"

    .line 130
    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 132
    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_6b} :catch_6b
    .catchall {:try_start_24 .. :try_end_6b} :catchall_8e

    .line 135
    :catch_6b
    :cond_6b
    :goto_6b
    :try_start_6b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbiq:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_70} :catch_71
    .catchall {:try_start_6b .. :try_end_70} :catchall_8e

    goto :goto_7b

    :catch_71
    move-exception v2

    .line 138
    :try_start_72
    new-instance v3, Lcom/google/android/gms/internal/ads/zzos;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbio:Lcom/google/android/gms/internal/ads/zzon;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzos;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzon;I)V

    throw v3
    :try_end_7b
    .catchall {:try_start_72 .. :try_end_7b} :catchall_8e

    .line 139
    :cond_7b
    :goto_7b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbiq:Ljava/io/InputStream;

    .line 140
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzop;->zziq()V

    .line 141
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbir:Z

    if-eqz v0, :cond_8d

    .line 142
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbir:Z

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbin:Lcom/google/android/gms/internal/ads/zzpa;

    if-eqz v0, :cond_8d

    .line 144
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzpa;->zze(Ljava/lang/Object;)V

    :cond_8d
    return-void

    :catchall_8e
    move-exception v2

    .line 145
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbiq:Ljava/io/InputStream;

    .line 146
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzop;->zziq()V

    .line 147
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbir:Z

    if-eqz v0, :cond_a1

    .line 148
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbir:Z

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbin:Lcom/google/android/gms/internal/ads/zzpa;

    if-eqz v0, :cond_a1

    .line 150
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzpa;->zze(Ljava/lang/Object;)V

    .line 151
    :cond_a1
    throw v2
.end method

.method public final getResponseHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbip:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbip:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final read([BII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzos;
        }
    .end annotation

    .line 80
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbiu:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbis:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_5c

    .line 81
    sget-object v0, Lcom/google/android/gms/internal/ads/zzop;->zzbif:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_19

    const/16 v0, 0x1000

    .line 83
    new-array v0, v0, [B

    .line 84
    :cond_19
    :goto_19
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbiu:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbis:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_57

    .line 85
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbis:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbiu:J

    sub-long/2addr v1, v6

    array-length v3, v0

    int-to-long v6, v3

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 86
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbiq:Ljava/io/InputStream;

    invoke-virtual {v1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 87
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_51

    if-eq v1, v5, :cond_4b

    .line 91
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbiu:J

    int-to-long v6, v1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbiu:J

    .line 92
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbin:Lcom/google/android/gms/internal/ads/zzpa;

    if-eqz v2, :cond_19

    .line 93
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbin:Lcom/google/android/gms/internal/ads/zzpa;

    invoke-interface {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzpa;->zzc(Ljava/lang/Object;I)V

    goto :goto_19

    .line 90
    :cond_4b
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 88
    :cond_51
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 95
    :cond_57
    sget-object v1, Lcom/google/android/gms/internal/ads/zzop;->zzbif:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_5c
    if-nez p3, :cond_5f

    return v4

    .line 99
    :cond_5f
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbit:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_79

    .line 100
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbit:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzop;->zzcq:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_73

    return v5

    :cond_73
    int-to-long v6, p3

    .line 103
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 104
    :cond_79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbiq:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v5, :cond_8e

    .line 106
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbit:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_88

    return v5

    .line 107
    :cond_88
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 109
    :cond_8e
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzcq:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzcq:J

    .line 110
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbin:Lcom/google/android/gms/internal/ads/zzpa;

    if-eqz p2, :cond_9d

    .line 111
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbin:Lcom/google/android/gms/internal/ads/zzpa;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzpa;->zzc(Ljava/lang/Object;I)V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9d} :catch_9e

    :cond_9d
    return p1

    :catch_9e
    move-exception p1

    .line 115
    new-instance p2, Lcom/google/android/gms/internal/ads/zzos;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzop;->zzbio:Lcom/google/android/gms/internal/ads/zzon;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/zzos;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzon;I)V

    throw p2

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzon;)J
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzos;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const-string v12, "Unable to connect to "

    .line 13
    iput-object v11, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbio:Lcom/google/android/gms/internal/ads/zzon;

    const-wide/16 v13, 0x0

    .line 14
    iput-wide v13, v10, Lcom/google/android/gms/internal/ads/zzop;->zzcq:J

    .line 15
    iput-wide v13, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbiu:J

    const/4 v15, 0x1

    .line 17
    :try_start_f
    new-instance v2, Ljava/net/URL;

    iget-object v0, v11, Lcom/google/android/gms/internal/ads/zzon;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 18
    iget-object v3, v11, Lcom/google/android/gms/internal/ads/zzon;->zzbic:[B

    .line 19
    iget-wide v8, v11, Lcom/google/android/gms/internal/ads/zzon;->position:J

    .line 20
    iget-wide v6, v11, Lcom/google/android/gms/internal/ads/zzon;->zzcp:J

    .line 21
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/zzon;->isFlagSet(I)Z

    move-result v0

    .line 22
    iget-boolean v1, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbig:Z

    const/4 v4, 0x0

    if-nez v1, :cond_36

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-wide v4, v8

    move v8, v0

    move/from16 v9, v16

    .line 23
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzop;->zza(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_78

    :cond_36
    move-object v4, v2

    move-object/from16 v16, v3

    const/4 v1, 0x0

    :goto_3a
    add-int/lit8 v5, v1, 0x1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_175

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v3, v16

    move-object/from16 v19, v4

    move/from16 v18, v5

    move-wide v4, v8

    move-wide/from16 v20, v6

    move-wide/from16 v22, v8

    move v8, v0

    move/from16 v9, v17

    .line 26
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzop;->zza(Ljava/net/URL;[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0x12c

    if-eq v2, v3, :cond_120

    const/16 v3, 0x12d

    if-eq v2, v3, :cond_120

    const/16 v3, 0x12e

    if-eq v2, v3, :cond_120

    const/16 v3, 0x12f

    if-eq v2, v3, :cond_120

    if-nez v16, :cond_77

    const/16 v3, 0x133

    if-eq v2, v3, :cond_120

    const/16 v3, 0x134

    if-ne v2, v3, :cond_77

    goto/16 :goto_120

    :cond_77
    move-object v0, v1

    .line 44
    :goto_78
    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbip:Ljava/net/HttpURLConnection;
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_7a} :catch_192

    .line 48
    :try_start_7a
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbip:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_80} :catch_fc

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_e0

    const/16 v2, 0x12b

    if-le v0, v2, :cond_89

    goto :goto_e0

    .line 60
    :cond_89
    iget-object v2, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbip:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    if-ne v0, v1, :cond_98

    .line 61
    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/zzon;->position:J

    cmp-long v2, v0, v13

    if-eqz v2, :cond_98

    iget-wide v13, v11, Lcom/google/android/gms/internal/ads/zzon;->position:J

    :cond_98
    iput-wide v13, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbis:J

    .line 62
    invoke-virtual {v11, v15}, Lcom/google/android/gms/internal/ads/zzon;->isFlagSet(I)Z

    move-result v0

    if-nez v0, :cond_be

    .line 63
    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/zzon;->zzcp:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_ad

    .line 64
    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/zzon;->zzcp:J

    iput-wide v0, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbit:J

    goto :goto_c2

    .line 65
    :cond_ad
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbip:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzop;->zzc(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_bb

    .line 66
    iget-wide v2, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbis:J

    sub-long v2, v0, v2

    .line 67
    :cond_bb
    iput-wide v2, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbit:J

    goto :goto_c2

    .line 69
    :cond_be
    iget-wide v0, v11, Lcom/google/android/gms/internal/ads/zzon;->zzcp:J

    iput-wide v0, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbit:J

    .line 70
    :goto_c2
    :try_start_c2
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbip:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbiq:Ljava/io/InputStream;
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_ca} :catch_d6

    .line 75
    iput-boolean v15, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbir:Z

    .line 76
    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbin:Lcom/google/android/gms/internal/ads/zzpa;

    if-eqz v0, :cond_d3

    .line 77
    invoke-interface {v0, v10, v11}, Lcom/google/android/gms/internal/ads/zzpa;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzon;)V

    .line 78
    :cond_d3
    iget-wide v0, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbit:J

    return-wide v0

    :catch_d6
    move-exception v0

    .line 73
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzop;->zziq()V

    .line 74
    new-instance v1, Lcom/google/android/gms/internal/ads/zzos;

    invoke-direct {v1, v0, v11, v15}, Lcom/google/android/gms/internal/ads/zzos;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzon;I)V

    throw v1

    .line 54
    :cond_e0
    :goto_e0
    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zzop;->zzbip:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 55
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzop;->zziq()V

    .line 56
    new-instance v2, Lcom/google/android/gms/internal/ads/zzor;

    invoke-direct {v2, v0, v1, v11}, Lcom/google/android/gms/internal/ads/zzor;-><init>(ILjava/util/Map;Lcom/google/android/gms/internal/ads/zzon;)V

    const/16 v1, 0x1a0

    if-ne v0, v1, :cond_fb

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/zzoo;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzoo;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzor;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 59
    :cond_fb
    throw v2

    :catch_fc
    move-exception v0

    .line 51
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzop;->zziq()V

    .line 52
    new-instance v1, Lcom/google/android/gms/internal/ads/zzos;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzon;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_117

    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_11c

    :cond_117
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_11c
    invoke-direct {v1, v2, v0, v11, v15}, Lcom/google/android/gms/internal/ads/zzos;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzon;I)V

    throw v1

    :cond_120
    :goto_120
    const/4 v3, 0x0

    const/16 v16, 0x0

    :try_start_123
    const-string v2, "Location"

    .line 30
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v2, :cond_16d

    .line 35
    new-instance v4, Ljava/net/URL;

    move-object/from16 v1, v19

    invoke-direct {v4, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v4}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    .line 37
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_165

    const-string v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_165

    .line 38
    new-instance v0, Ljava/net/ProtocolException;

    const-string v2, "Unsupported protocol redirect: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_15c

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_161

    :cond_15c
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_161
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_165
    move/from16 v1, v18

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    goto/16 :goto_3a

    .line 34
    :cond_16d
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Null location redirect"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_175
    move/from16 v18, v5

    .line 43
    new-instance v0, Ljava/net/NoRouteToHostException;

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Too many redirects: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_192} :catch_192

    :catch_192
    move-exception v0

    .line 47
    new-instance v1, Lcom/google/android/gms/internal/ads/zzos;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzon;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1aa

    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1af

    :cond_1aa
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1af
    invoke-direct {v1, v2, v0, v11, v15}, Lcom/google/android/gms/internal/ads/zzos;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzon;I)V

    throw v1

    return-void
.end method
