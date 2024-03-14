.class public Lcom/google/android/gms/ads/AdError;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# static fields
.field public static final UNDEFINED_DOMAIN:Ljava/lang/String; = "undefined"


# instance fields
.field private final code:I

.field private final zzacm:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final zzacn:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final zzaco:Lcom/google/android/gms/ads/AdError;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/ads/AdError;->code:I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/ads/AdError;->zzacm:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/ads/AdError;->zzacn:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/ads/AdError;->zzaco:Lcom/google/android/gms/ads/AdError;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdError;)V
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/google/android/gms/ads/AdError;->code:I

    .line 9
    iput-object p2, p0, Lcom/google/android/gms/ads/AdError;->zzacm:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/google/android/gms/ads/AdError;->zzacn:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/google/android/gms/ads/AdError;->zzaco:Lcom/google/android/gms/ads/AdError;

    return-void
.end method


# virtual methods
.method public getCause()Lcom/google/android/gms/ads/AdError;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzaco:Lcom/google/android/gms/ads/AdError;

    return-object v0
.end method

.method public getCode()I
    .registers 2

    .line 13
    iget v0, p0, Lcom/google/android/gms/ads/AdError;->code:I

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzacn:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzacm:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/AdError;->zzdp()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_c

    :catch_a
    const-string v0, "Error forming toString output."

    :goto_c
    return-object v0
.end method

.method public final zzdo()Lcom/google/android/gms/internal/ads/zzva;
    .registers 15
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/ads/AdError;->zzaco:Lcom/google/android/gms/ads/AdError;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_16

    .line 19
    :cond_7
    new-instance v7, Lcom/google/android/gms/internal/ads/zzva;

    iget v2, v0, Lcom/google/android/gms/ads/AdError;->code:I

    iget-object v3, v0, Lcom/google/android/gms/ads/AdError;->zzacm:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/ads/AdError;->zzacn:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzva;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzva;Landroid/os/IBinder;)V

    move-object v12, v7

    .line 20
    :goto_16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzva;

    iget v9, p0, Lcom/google/android/gms/ads/AdError;->code:I

    iget-object v10, p0, Lcom/google/android/gms/ads/AdError;->zzacm:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/ads/AdError;->zzacn:Ljava/lang/String;

    const/4 v13, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzva;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzva;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public zzdp()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 22
    iget v1, p0, Lcom/google/android/gms/ads/AdError;->code:I

    const-string v2, "Code"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->zzacm:Ljava/lang/String;

    const-string v2, "Message"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->zzacn:Ljava/lang/String;

    const-string v2, "Domain"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/ads/AdError;->zzaco:Lcom/google/android/gms/ads/AdError;

    const-string v2, "Cause"

    if-nez v1, :cond_26

    const-string v1, "null"

    .line 26
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2d

    .line 27
    :cond_26
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdError;->zzdp()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2d
    return-object v0
.end method
