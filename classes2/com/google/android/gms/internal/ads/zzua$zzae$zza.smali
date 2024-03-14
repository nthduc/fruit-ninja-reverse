.class public final Lcom/google/android/gms/internal/ads/zzua$zzae$zza;
.super Lcom/google/android/gms/internal/ads/zzejz$zzb;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzua$zzae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz$zzb<",
        "Lcom/google/android/gms/internal/ads/zzua$zzae;",
        "Lcom/google/android/gms/internal/ads/zzua$zzae$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzpg()Lcom/google/android/gms/internal/ads/zzua$zzae;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzuc;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzua$zzae$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzcy(I)Lcom/google/android/gms/internal/ads/zzua$zzae$zza;
    .registers 3

    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 14
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzae$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzae;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzae;->zza(Lcom/google/android/gms/internal/ads/zzua$zzae;I)V

    return-object p0
.end method

.method public final zzpe()Z
    .registers 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzae$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzua$zzae;->zzpe()Z

    move-result v0

    return v0
.end method

.method public final zzx(Z)Lcom/google/android/gms/internal/ads/zzua$zzae$zza;
    .registers 3

    .line 5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 8
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzua$zzae$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzua$zzae;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzua$zzae;->zza(Lcom/google/android/gms/internal/ads/zzua$zzae;Z)V

    return-object p0
.end method
