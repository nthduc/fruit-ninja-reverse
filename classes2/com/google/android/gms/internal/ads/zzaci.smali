.class public Lcom/google/android/gms/internal/ads/zzaci;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.4.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzclg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzcn:Ljava/lang/String;

.field private final zzczv:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzcn:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzclg:Ljava/lang/Object;

    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzczv:I

    return-void
.end method

.method public static zzb(Ljava/lang/String;D)Lcom/google/android/gms/internal/ads/zzaci;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaci;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    sget p2, Lcom/google/android/gms/internal/ads/zzack;->zzczy:I

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaci;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzaci;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaci;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget p2, Lcom/google/android/gms/internal/ads/zzack;->zzczx:I

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaci;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzaci;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaci;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget v1, Lcom/google/android/gms/internal/ads/zzack;->zzczw:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaci;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaci;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzaci<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaci;

    sget v1, Lcom/google/android/gms/internal/ads/zzack;->zzczz:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzaci;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzadj;->zzsa()Lcom/google/android/gms/internal/ads/zzadk;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/ads/zzach;->zzczu:[I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzczv:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    if-eq v1, v3, :cond_48

    const/4 v2, 0x2

    if-eq v1, v2, :cond_39

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2a

    const/4 v2, 0x4

    if-ne v1, v2, :cond_24

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzcn:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzclg:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzadk;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 18
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 16
    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzcn:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzclg:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadk;->zza(Ljava/lang/String;D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 15
    :cond_39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzcn:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzclg:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadk;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 14
    :cond_48
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzcn:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaci;->zzclg:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzadk;->zzf(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 12
    :cond_57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flag is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
