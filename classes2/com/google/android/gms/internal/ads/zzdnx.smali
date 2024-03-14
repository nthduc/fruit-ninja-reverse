.class public final Lcom/google/android/gms/internal/ads/zzdnx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.4.0"


# instance fields
.field private code:I

.field private description:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x3

    const-string v1, ""

    .line 6
    :goto_9
    invoke-virtual {p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 7
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x66ca7c04

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2e

    const v5, 0x2eaded

    if-eq v4, v5, :cond_24

    goto :goto_37

    :cond_24
    const-string v4, "code"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v3, 0x0

    goto :goto_37

    :cond_2e
    const-string v4, "description"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    const/4 v3, 0x1

    :cond_37
    :goto_37
    if-eqz v3, :cond_44

    if-eq v3, v6, :cond_3f

    .line 13
    invoke-virtual {p1}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_9

    .line 11
    :cond_3f
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    .line 9
    :cond_44
    invoke-virtual {p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    goto :goto_9

    .line 15
    :cond_49
    invoke-virtual {p1}, Landroid/util/JsonReader;->endObject()V

    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzdnx;->code:I

    .line 17
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnx;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnx;->description:Ljava/lang/String;

    return-object v0
.end method
