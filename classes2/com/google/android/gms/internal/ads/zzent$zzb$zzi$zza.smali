.class public final Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;
.super Lcom/google/android/gms/internal/ads/zzejz$zzb;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz$zzb<",
        "Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;",
        "Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zzbkd()Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzenv;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzbx(Z)Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;Z)V

    return-object p0
.end method

.method public final zzfu(J)Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;
    .registers 4

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;J)V

    return-object p0
.end method

.method public final zzij(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;
    .registers 3

    .line 4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 7
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi$zza;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzi;Ljava/lang/String;)V

    return-object p0
.end method
