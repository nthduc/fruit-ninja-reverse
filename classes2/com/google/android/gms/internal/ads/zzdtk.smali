.class final Lcom/google/android/gms/internal/ads/zzdtk;
.super Lcom/google/android/gms/internal/ads/zzdtg;
.source "com.google.android.gms:play-services-gass@@19.4.0"


# instance fields
.field private zzhmg:Ljava/lang/String;

.field private zzhmh:Ljava/lang/Boolean;

.field private zzhmi:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdtg;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzavw()Lcom/google/android/gms/internal/ads/zzdtd;
    .registers 6

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtk;->zzhmg:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_c

    const-string v0, " clientVersion"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtk;->zzhmh:Ljava/lang/Boolean;

    if-nez v0, :cond_1a

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " shouldGetAdvertisingId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdtk;->zzhmi:Ljava/lang/Boolean;

    if-nez v0, :cond_28

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " isGooglePlayServicesAvailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    :cond_28
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    :cond_41
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_46
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_4a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdti;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdtk;->zzhmg:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdtk;->zzhmh:Ljava/lang/Boolean;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdtk;->zzhmi:Ljava/lang/Boolean;

    .line 22
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdti;-><init>(Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzdth;)V

    return-object v0
.end method

.method public final zzbq(Z)Lcom/google/android/gms/internal/ads/zzdtg;
    .registers 2

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtk;->zzhmh:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzbr(Z)Lcom/google/android/gms/internal/ads/zzdtg;
    .registers 2

    const/4 p1, 0x1

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtk;->zzhmi:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzhb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdtg;
    .registers 3

    if-eqz p1, :cond_5

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdtk;->zzhmg:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null clientVersion"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
