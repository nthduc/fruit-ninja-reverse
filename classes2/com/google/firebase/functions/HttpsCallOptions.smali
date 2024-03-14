.class Lcom/google/firebase/functions/HttpsCallOptions;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-functions@@19.0.2"


# static fields
.field private static final DEFAULT_TIMEOUT:J = 0x46L

.field private static final DEFAULT_TIMEOUT_UNITS:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private timeout:J

.field private timeoutUnits:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/google/firebase/functions/HttpsCallOptions;->DEFAULT_TIMEOUT_UNITS:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x46

    .line 28
    iput-wide v0, p0, Lcom/google/firebase/functions/HttpsCallOptions;->timeout:J

    .line 29
    sget-object v0, Lcom/google/firebase/functions/HttpsCallOptions;->DEFAULT_TIMEOUT_UNITS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/google/firebase/functions/HttpsCallOptions;->timeoutUnits:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method apply(Lokhttp3/OkHttpClient;)Lokhttp3/OkHttpClient;
    .registers 5

    .line 54
    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/firebase/functions/HttpsCallOptions;->timeout:J

    iget-object v2, p0, Lcom/google/firebase/functions/HttpsCallOptions;->timeoutUnits:Ljava/util/concurrent/TimeUnit;

    .line 55
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/firebase/functions/HttpsCallOptions;->timeout:J

    iget-object v2, p0, Lcom/google/firebase/functions/HttpsCallOptions;->timeoutUnits:Ljava/util/concurrent/TimeUnit;

    .line 56
    invoke-virtual {p1, v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    return-object p1
.end method

.method public getTimeout()J
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/google/firebase/functions/HttpsCallOptions;->timeoutUnits:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Lcom/google/firebase/functions/HttpsCallOptions;->timeout:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method setTimeout(JLjava/util/concurrent/TimeUnit;)V
    .registers 4

    .line 38
    iput-wide p1, p0, Lcom/google/firebase/functions/HttpsCallOptions;->timeout:J

    .line 39
    iput-object p3, p0, Lcom/google/firebase/functions/HttpsCallOptions;->timeoutUnits:Ljava/util/concurrent/TimeUnit;

    return-void
.end method
