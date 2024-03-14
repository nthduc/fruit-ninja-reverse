.class public final Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;
.super Lcom/google/android/gms/internal/ads/zzejz$zzb;
.source "com.google.android.gms:play-services-ads@@19.4.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzell;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzejz$zzb<",
        "Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;",
        "Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzell;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzbkb()Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;-><init>(Lcom/google/android/gms/internal/ads/zzejz;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzenv;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzent$zzb$zzd;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;Lcom/google/android/gms/internal/ads/zzent$zzb$zzd;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;
    .registers 3

    .line 22
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 25
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zza;)V

    return-object p0
.end method

.method public final zzhx(I)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;I)V

    return-object p0
.end method

.method public final zzih(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;
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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zza(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzii(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;
    .registers 3

    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    if-eqz v0, :cond_a

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zzbgp()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzejz$zzb;->zziji:Z

    .line 31
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh$zzb;->zzijh:Lcom/google/android/gms/internal/ads/zzejz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;->zzb(Lcom/google/android/gms/internal/ads/zzent$zzb$zzh;Ljava/lang/String;)V

    return-object p0
.end method
