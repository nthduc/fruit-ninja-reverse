.class public final Lcom/google/android/gms/internal/ads/zzedi$zza;
.super Lcom/google/android/gms/internal/ads/zzejz$zzb;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzedi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz$zzb<",
        "Lcom/google/android/gms/internal/ads/zzedi;",
        "Lcom/google/android/gms/internal/ads/zzedi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzedi;->zzazv()Lcom/google/android/gms/internal/ads/zzedi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzedj;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzedi$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzedm;)Lcom/google/android/gms/internal/ads/zzedi$zza;
    .registers 3

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 13
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzedi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzedi;->zza(Lcom/google/android/gms/internal/ads/zzedi;Lcom/google/android/gms/internal/ads/zzedm;)V

    return-object p0
.end method

.method public final zzeu(I)Lcom/google/android/gms/internal/ads/zzedi$zza;
    .registers 3

    .line 4
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 7
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzedi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzedi;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzedi;->zza(Lcom/google/android/gms/internal/ads/zzedi;I)V

    return-object p0
.end method

.method public final zzu(Lcom/google/android/gms/internal/ads/zzeip;)Lcom/google/android/gms/internal/ads/zzedi$zza;
    .registers 3

    .line 16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 19
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzedi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzedi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzedi;->zza(Lcom/google/android/gms/internal/ads/zzedi;Lcom/google/android/gms/internal/ads/zzeip;)V

    return-object p0
.end method
