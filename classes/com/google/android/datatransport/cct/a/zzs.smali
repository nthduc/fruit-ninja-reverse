.class public abstract Lcom/google/android/datatransport/cct/a/zzs;
.super Ljava/lang/Object;
.source "com.google.android.datatransport:transport-backend-cct@@2.2.1"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Ljava/io/Reader;)Lcom/google/android/datatransport/cct/a/zzs;
    .registers 4
    .param p0    # Ljava/io/Reader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/JsonReader;

    invoke-direct {v0, p0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 2
    :try_start_5
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 3
    :goto_8
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_44

    .line 4
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_4c

    const-string v1, "nextRequestWaitMillis"

    .line 5
    :try_start_14
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_40

    .line 6
    invoke-virtual {v0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object p0

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne p0, v1, :cond_33

    .line 7
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 8
    new-instance p0, Lcom/google/android/datatransport/cct/a/zzl;

    invoke-direct {p0, v1, v2}, Lcom/google/android/datatransport/cct/a/zzl;-><init>(J)V
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_4c

    .line 9
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    return-object p0

    .line 10
    :cond_33
    :try_start_33
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v1

    .line 11
    new-instance p0, Lcom/google/android/datatransport/cct/a/zzl;

    invoke-direct {p0, v1, v2}, Lcom/google/android/datatransport/cct/a/zzl;-><init>(J)V
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_4c

    .line 12
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    return-object p0

    .line 13
    :cond_40
    :try_start_40
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_8

    .line 14
    :cond_44
    new-instance p0, Ljava/io/IOException;
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_4c

    const-string v1, "Response is missing nextRequestWaitMillis field."

    :try_start_48
    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception p0

    .line 15
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    throw p0

    return-void
.end method


# virtual methods
.method public abstract zza()J
.end method
